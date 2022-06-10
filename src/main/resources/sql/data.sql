
insert into USERS (ID, PASSWORD, USERNAME, ENABLED)
VALUES (0, '', 'anonymous', true);
insert into USERS (ID, PASSWORD, USERNAME, ENABLED)
VALUES (1, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'admin', true);
insert into USERS (ID, PASSWORD, USERNAME, ENABLED)
VALUES (2, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'user', true);

insert into AUTHORITIES (ID, AUTHORITY)
VALUES (0, 'ROLE_ANONYMOUS');
insert into AUTHORITIES (ID, AUTHORITY)
VALUES (1, 'ROLE_ADMIN');
insert into AUTHORITIES (ID, AUTHORITY)
VALUES (2, 'ROLE_USER');

insert into USERS_AUTHORITIES (USER_ID, AUTHORITY_ID)
VALUES (1, 1);
insert into USERS_AUTHORITIES (USER_ID, AUTHORITY_ID)
VALUES (1, 2);
insert into USERS_AUTHORITIES (USER_ID, AUTHORITY_ID)
VALUES (2, 2);

insert into POSTS (ID, BODY, CREATION_DATE, TITLE, USER_ID)
VALUES (1, 'In ancient times, a King had a boulder placed on a roadway. He then hid himself and watched to see if anyone would move the boulder out of the way. Some of the king’s wealthiest merchants and courtiers came by and simply walked around it.
Many people loudly blamed the King for not keeping the roads clear, but none of them did anything about getting the stone out of the way.
A peasant then came along carrying a load of vegetables. Upon approaching the boulder, the peasant laid down his burden and tried to push the stone out of the road. After much pushing and straining, he finally succeeded.
After the peasant went back to pick up his vegetables, he noticed a purse lying in the road where the boulder had been.
The purse contained many gold coins and a note from the King explaining that the gold was for the person who removed the boulder from the roadway.',
        '2022-06-10', 'The Obstacles In Our Path', 2);
        
        
insert into POSTS (ID, BODY, CREATION_DATE, TITLE, USER_ID)
VALUES (2, 'Life brings us as many joyful moments as it does downfalls, and although there are days we wish there was a manual to follow, it simply wouldn’t be the same without the spontaneity. The journey of life may not become easier as we grow older,
but we do seem to understand it better as our perspectives evolve.
Whether you’re embarking on a new adventure right out of school or you want to explore different paths in your personal life,
it’s never too late to change what the future looks like.','2022-06-10', 'Life', 1);


insert into POSTS (ID, BODY, CREATION_DATE, TITLE, USER_ID)
VALUES (3, 'A man found a cocoon of a butterfly.
One day a small opening appeared. He sat and watched the butterfly for several hours as it struggled to force its body through that little hole.
Until it suddenly stopped making any progress and looked like it was stuck.
So the man decided to help the butterfly. He took a pair of scissors and snipped off the remaining bit of the cocoon. The butterfly then emerged easily, although it had a swollen body and small, shriveled wings.
The man didn’t think anything of it and sat there waiting for the wings to enlarge to support the butterfly. But that didn’t happen. The butterfly spent the rest of its life unable to fly, crawling around with tiny wings and a swollen body.
Despite the kind heart of the man, he didn’t understand that the restricting cocoon and the struggle needed by the butterfly to get itself through the small opening; were God’s way of forcing fluid from the body of the butterfly into its wings. To prepare itself for flying once it was out of the cocoon.',
        '2022-06-10', 'Struggles in life Develop Our Strengths', 2);
        
        
insert into COMMENTS (ID, BODY, CREATION_DATE, POST_ID, USER_ID)
VALUES (1, 'comentras a', current_timestamp(), 1, 0);
insert into COMMENTS (ID, BODY, CREATION_DATE, POST_ID, USER_ID)
VALUES (2, 'comentras a', current_timestamp(), 1, 2);
insert into COMMENTS (ID, BODY, CREATION_DATE, POST_ID, USER_ID)
VALUES (3, 'comentras a', current_timestamp(), 1, 0);
insert into COMMENTS (ID, BODY, CREATION_DATE, POST_ID, USER_ID)
VALUES (4, 'comentras a', current_timestamp(), 2, 0);
insert into COMMENTS (ID, BODY, CREATION_DATE, POST_ID, USER_ID)
VALUES (5, 'comentras a', current_timestamp(), 2, 1);
insert into COMMENTS (ID, BODY, CREATION_DATE, POST_ID, USER_ID)
VALUES (6, 'comentras a', current_timestamp(), 1, 0);

