-- loadInitData.sql a script to load initial data
-- make sure addInsertFuncs.sql is run before this
-- add account, the password of the accounts is "  password  "
insert into users (first_name,last_name,username,division,department,usertype,enc_pass,salt)
values ('Jin','Zeng','jinzeng','1','1','1',
'81859fcda8b7c1209cb5c348f69f1e696216031b35a43eb98e73f56b06dc1683',
'c1ae3b7824bde34e0214741b96cf308f43230633cd809acbcd4dfa17fba3b156');
insert into users (first_name,last_name,username,division,department,usertype,enc_pass,salt)
values ('Jane','Doe','janedoe','2','2','2',
'3d4edbc1baa8365945899d2fc479dea63f5273234d473484d7452fd3e7593454',
'9d2b560cc7d1c81302dc26931cff6fa9c8c8e9412797e6a7cd595177c10d7637');
insert into users (first_name,last_name,username,division,department,usertype,enc_pass,salt)
values ('John','Doe','johndoe','2','3','2',
'bd3aecfa0df1c610b05b0941b8e473b2048b7545f53a7a65567d4e871cb49620',
'c59f761f4081ab423c8da403a02b425a4268c77793389038d78d20da3cd02831');
insert into users (first_name,last_name,username,division,department,usertype,enc_pass,salt)
values ('Sam','Walker','samwalker','2','4','2',
'e20b15529a97cd463bdc30385ca87151dcb00f046404764e42d1ac53e0230aff',
'3a7c661c00c5bc8a88fd7fa4f49ebf1875e37ce424cfc1bf14c77b1ba9b07a6b');
insert into users (first_name,last_name,username,division,department,usertype,enc_pass,salt)
values ('Bill','Gates','billgates','3','2','2',
'e3cf46e03bbf582fa75bdd41cfe2436c03c642303691030c7524dd7ee86c94c7',
'4d9e1a32185f7e213920446106fbd30acba9eeae402180409b2d3d54754abfb9');
insert into users (first_name,last_name,username,division,department,usertype,enc_pass,salt)
values ('Jose','Take','josetake','3','3','2',
'6d1dd1dca124230bca80cd2c72a08bc3ae515c3b7a536f61aed7673095411372',
'9c05af8ca04238f94387f84aad31409414f46f718664371c2f0605ba2625e0b4');
insert into users (first_name,last_name,username,division,department,usertype,enc_pass,salt)
values ('Jason','Harry','jasonharry','3','4','2',
'c2892be72d7fb31f24223d8069a6820d21ccae0d9e2d454eb52279ec0364fcb3',
'd30588bb6b4ea17a4d254b0e0705ae5be95993fd3334af581824535eb68fb954');
insert into users (first_name,last_name,username,division,department,usertype,enc_pass,salt)
values ('Warren','Tam','warrentam','2','3','3',
'e9d9de952c2e644f7a4a990c52ff832340de52c3d8b4f6750e912c2988e16669',
'4a55b5b5eeb37db539573c7db7469189d309b82788a5f85752b6e6886d69acbb');
insert into suggestions (suggestion) values ('CENT 285');
insert into suggestions (suggestion) values ('CENT 310');
insert into suggestions (suggestion) values ('CENT 240');
insert into suggestions (suggestion) values ('CENT 280');
insert into suggestions (suggestion) values ('CENT 140');
insert into suggestions (suggestion) values ('CENT 305');
insert into suggestions (suggestion) values ('CENT 130');
insert into suggestions (suggestion) values ('CENT 231');
insert into user_suggestion (user_id,suggestion_id) values (1,1);
insert into user_suggestion (user_id,suggestion_id) values (2,2);
insert into user_suggestion (user_id,suggestion_id) values (5,4);
insert into user_suggestion (user_id,suggestion_id) values (4,3);
insert into user_suggestion (user_id,suggestion_id) values (8,1);
insert into user_suggestion (user_id,suggestion_id) values (7,6);
insert into user_suggestion (user_id,suggestion_id) values (3,8);
insert into user_suggestion (user_id,suggestion_id) values (2,5);

