INSERT INTO member_member
  (id, handle, address, cellphone, picture, member_since, last_modified, access_card,
   unix_username, unix_uid, authorized_keys, hausmania_keynumber, hausmania_deposit,
   nettlaug_member, membership_expiry, membertype, comment, user_id, running_membership,
   card_number, bankregex)
VALUES
    (1, "t3stus3r","Adresseveien 42\n 1337 Hackeriet","+4701234567","","2017-11-07 20:29:38.739873+01",
        "2018-11-13 22:01:02.68893+01","0x13371337","unixus3r",1337,"ssh-foo deadbeefdeadbeef", 4321, 1,
        1, '2030-01-01', '250',"kommentar 123", 1, 1, "0x13371337","t3st.+testesesen"),
    (2, "bruk4rf00","foo@clorin.test","+470001232323","","2019-12-07 20:29:38.739873+01",
        "2019-12-13 22:01:02.68893+01","0x13371337","bruk4r",2000,"ssh-foo blablablabal", NULL, 0,
        0, '2030-01-01', '3000',"betaler 3000,- ikke nettlaugsmedlem, har ikke nøkkel", 2, 1, "0x13371337","balle.+clorin")
;
