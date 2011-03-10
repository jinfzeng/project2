-- createTables.sql
-- create sequences
drop sequence if exists user_id_seq cascade;
create sequence user_id_seq;
drop sequence if exists suggestion_id_seq cascade;
create sequence suggestion_id_seq;

-- create tables
drop table if exists users cascade;
create table users(
uid integer not null primary key default nextval('user_id_seq'),
first_name text,
last_name text,
username text unique,
division integer,
department integer,
usertype integer,
password text,
enc_pass text,
salt text
);

drop table if exists suggestions cascade;
create table suggestions(
sid integer not null primary key default nextval('suggestion_id_seq'),
suggestion text,
created_at timestamp,
updated_at timestamp
);

drop table if exists user_suggestion cascade;
create table user_suggestion(
user_id integer references users(uid),
suggestion_id integer references suggestions(sid)
);

-- create view
drop view if exists user_suggestion_view cascade;
create view user_suggestion_view as
select users.uid,users.first_name,users.last_name,suggestions.sid,
suggestions.suggestion,suggestions.created_at,suggestions.updated_at
from users join user_suggestion on users.uid=user_suggestion.user_id
join suggestions on user_suggestion.suggestion_id=suggestions.sid;
