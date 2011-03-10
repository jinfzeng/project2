-- loadInitData.sql a script to load initial data
-- make sure addInsertFuncs.sql is run before this
-- add Author and Book records
insert into users (first_name,last_name,username,division,department,usertype,enc_pass,salt)
values ('Jin','Zeng','jin','1','1','1',
'41e4e3c45e475850f5195ef41429a8a6456412185051c9299c0d32fb1927c417',
'dee8e59c4c370fd637c93c63ea8a97870c9921eaa0fa6cd639c95f0a3a09db5c');
