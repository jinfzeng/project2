-- addInsertFuncs.sql - this script will make it easier to add suggestions
-- make sure that createTables.sql is run before this
-- create plpgsql language
drop language if exists plpgsql cascade;
create language plpgsql;

-- create function for adding User and returning id
create or replace function insertUser(_fname text, _lname text, _username text, 
  _division text, _department text, _usertype text, _password text)
  returns integer as
  $func$
  begin
    execute 'insert into users (first_name, last_name, username, division, department, 
      usertype, password, enc_pass, salt) values (' || quote_literal(_fname) || ', '
             || quote_literal(_lname) || ',' || quote_literal(_username) || ', ' 
             || quote_literal(_division) || ', ' || quote_literal(_department) || ', '
             || quote_literal(_usertype) || ', ' || quote_literal(_password) || ')';
    return currval('user_id_seq');
  end;
  $func$
  language 'plpgsql';

-- create function for adding suggestions and returning id
create or replace function insertSuggestion(_suggestion text)
returns integer as
$func$
begin
execute 'insert into suggestions (suggestion, created_at, updated_at)
values ('
|| quote_literal(_suggestion) || ',' || quote_literal(now()) || ',' 
|| quote_literal(now()) || ')';
return currval('suggestion_id_seq');
end;
$func$
language 'plpgsql';

-- create function for inserting into Users and Suggestions
create or replace function insertUserSuggestion(_userid integer
, _suggestion text)
returns boolean as
$func$
declare
userid int;
sql2 text;
begin
userid := _userid;
sql2 := 'coalesce((select id from suggestions where suggestion = '
|| quote_literal(_suggestion) || '),insertSuggestion(' || quote_literal(_suggestion) || '))';
execute 'insert into user_suggestion (user_id, suggestion_id) values ('
|| userid || ',' || sql2 || ')';
return 't';
end;
$func$
language 'plpgsql';

-- create rule
create or replace rule user_suggestion_ins as on insert to user_suggestion_view
do instead select insertUserSuggestion(new.userid, new.suggestion);

-- create function for inserting into Users and Suggestions
create or replace function insertUserSuggestion(_fname text, 
_lname text, _suggestion text)
returns boolean as
$func$
declare
sql1 text;
sql2 text;
begin
sql1 := 'coalesce(insertAuthor('
|| quote_literal(_fname) || ',' || quote_literal(_lname) || '))';
sql2 := 'coalesce((select id from suggestions where suggestion = '
|| quote_literal(_suggestion) || '),insertSuggestion(' || quote_literal(_suggestion) || '))';
execute 'insert into author_book (user_id, suggestion_id) values ('
|| sql1 || ',' || sql2 || ')';
return 't';
end;
$func$
language 'plpgsql';

-- create rule
create or replace rule user_suggestion_ins as on insert to user_suggestion_view
do instead select insertUserSuggestion(new.first_name, new.last_name, new.suggestion);
