CREATE TABLE NATIONALITYENTITYM (ID BIGINT NOT NULL, DESCRIPTION VARCHAR(255), NAME VARCHAR(255))
insert into APP.NATIONALITYENTITYM (ID, NAME, DESCRIPTION) values (1, 'Philippines', 'Philippines Citizen')
insert into APP.NATIONALITYENTITYM (ID, NAME, DESCRIPTION) values (2, 'Argentina', 'Argentina Citizen')
insert into APP.NATIONALITYENTITYM (ID, NAME, DESCRIPTION) values (3, 'Saudi Arabia', 'Saudi Arabia Citizen')
insert into APP.NATIONALITYENTITYM (ID, NAME, DESCRIPTION) values (4, 'Bangladesh', 'Bangladesh Citizen')
insert into APP.NATIONALITYENTITYM (ID, NAME, DESCRIPTION) values (5, 'Philippines', 'Philippines Citizen')
insert into APP.NATIONALITYENTITYM (ID, NAME, DESCRIPTION) values (6, 'Indonesia', 'Indonesia Citizen')
insert into APP.NATIONALITYENTITYM (ID, NAME, DESCRIPTION) values (7, 'Indonesia', 'Indonesia Citizen')
insert into APP.NATIONALITYENTITYM (ID, NAME, DESCRIPTION) values (8, 'China', 'China Citizen')
insert into APP.NATIONALITYENTITYM (ID, NAME, DESCRIPTION) values (9, 'Haiti', 'Haiti Citizen')
insert into APP.NATIONALITYENTITYM (ID, NAME, DESCRIPTION) values (10, 'Austria', 'Austria Citizen')
insert into APP.NATIONALITYENTITY (NAME, DESCRIPTION) SELECT NAME, DESCRIPTION FROM APP.NATIONALITYENTITYM WHERE ID NOT IN (SELECT ID FROM NATIONALITYENTITY)
DROP TABLE NATIONALITYENTITYM

CREATE TABLE PRODUCTENTITYM (ID BIGINT NOT NULL, NAME VARCHAR(255), PRICE BIGINT)
insert into APP.PRODUCTENTITYM (ID, NAME, PRICE) values (1, 'Bitchip', 90.07)
insert into APP.PRODUCTENTITYM (ID, NAME, PRICE) values (2, 'Voltsillam', 37.89)
insert into APP.PRODUCTENTITYM (ID, NAME, PRICE) values (3, 'Asoka', 39.71)
insert into APP.PRODUCTENTITYM (ID, NAME, PRICE) values (4, 'Gembucket', 81.85)
insert into APP.PRODUCTENTITYM (ID, NAME, PRICE) values (5, 'Toughjoyfax', 48.54)
insert into APP.PRODUCTENTITYM (ID, NAME, PRICE) values (6, 'Bamity', 11.95)
insert into APP.PRODUCTENTITYM (ID, NAME, PRICE) values (7, 'Fix San', 87.5)
insert into APP.PRODUCTENTITYM (ID, NAME, PRICE) values (8, 'Andalax', 65.54)
insert into APP.PRODUCTENTITYM (ID, NAME, PRICE) values (9, 'Cardguard', 71.55)
insert into APP.PRODUCTENTITYM (ID, NAME, PRICE) values (10, 'Aerified', 6.26)
insert into APP.PRODUCTENTITY (NAME, PRICE) SELECT NAME, PRICE FROM APP.PRODUCTENTITYM WHERE ID NOT IN (SELECT ID FROM PRODUCTENTITY)
DROP TABLE PRODUCTENTITYM

CREATE TABLE ARTISTENTITYM (ID BIGINT NOT NULL, NAME VARCHAR(255), SCORE BIGINT, NATIONALITY_ID BIGINT)
insert into APP.ARTISTENTITYM (ID, NAME, SCORE, NATIONALITY_ID) values (1, 'Joe Payne', 2, 1)
insert into APP.ARTISTENTITYM (ID, NAME, SCORE, NATIONALITY_ID) values (2, 'Lillian Russell', 4, 5)
insert into APP.ARTISTENTITYM (ID, NAME, SCORE, NATIONALITY_ID) values (3, 'Samuel Harper', 1, 8)
insert into APP.ARTISTENTITYM (ID, NAME, SCORE, NATIONALITY_ID) values (4, 'Margaret Coleman', 4, 1)
insert into APP.ARTISTENTITYM (ID, NAME, SCORE, NATIONALITY_ID) values (5, 'Patricia Hughes', 5, 6)
insert into APP.ARTISTENTITYM (ID, NAME, SCORE, NATIONALITY_ID) values (6, 'Louis Roberts', 4, 1)
insert into APP.ARTISTENTITYM (ID, NAME, SCORE, NATIONALITY_ID) values (7, 'Jose Hill', 3, 10)
insert into APP.ARTISTENTITYM (ID, NAME, SCORE, NATIONALITY_ID) values (8, 'Virginia Carter', 2, 4)
insert into APP.ARTISTENTITYM (ID, NAME, SCORE, NATIONALITY_ID) values (9, 'Sharon Sims', 1, 9)
insert into APP.ARTISTENTITYM (ID, NAME, SCORE, NATIONALITY_ID) values (10, 'Teresa Hawkins', 5, 4)
insert into APP.ARTISTENTITY (NAME, SCORE, NATIONALITY_ID) SELECT NAME, SCORE, NATIONALITY_ID FROM APP.ARTISTENTITYM WHERE ID NOT IN (SELECT ID FROM ARTISTENTITY)
DROP TABLE ARTISTENTITYM

CREATE TABLE ARTISTLIKEENTITYM (ID BIGINT, NAME VARCHAR(255), ARTIST_ID BIGINT)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (1, '', 6)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (2, '', 10)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (3, '', 9)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (4, '', 9)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (5, '', 1)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (6, '', 10)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (7, '', 2)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (8, '', 3)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (9, '', 5)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (10, '', 5)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (11, '', 5)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (12, '', 5)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (13, '', 5)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (14, '', 9)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (15, '', 6)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (16, '', 10)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (17, '', 6)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (18, '', 5)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (19, '', 9)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (20, '', 2)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (21, '', 3)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (22, '', 9)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (23, '', 4)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (24, '', 7)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (25, '', 7)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (26, '', 6)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (27, '', 3)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (28, '', 3)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (29, '', 4)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (30, '', 2)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (31, '', 8)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (32, '', 6)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (33, '', 2)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (34, '', 8)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (35, '', 1)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (36, '', 6)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (37, '', 8)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (38, '', 8)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (39, '', 1)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (40, '', 4)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (41, '', 10)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (42, '', 4)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (43, '', 3)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (44, '', 4)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (45, '', 10)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (46, '', 2)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (47, '', 1)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (48, '', 3)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (49, '', 1)
insert into APP.ARTISTLIKEENTITYM (ID, NAME, ARTIST_ID) values (50, '', 5)
insert into APP.ARTISTLIKEENTITY (NAME, ARTIST_ID) SELECT NAME, ARTIST_ID FROM APP.ARTISTLIKEENTITYM WHERE ID NOT IN (SELECT ID FROM ARTISTLIKEENTITY)
DROP TABLE ARTISTLIKEENTITYM

CREATE TABLE CATEGORYENTITYM (ID BIGINT NOT NULL, NAME VARCHAR(255), PARENTCATEGORY_ID BIGINT)
insert into APP.CATEGORYENTITYM (ID, NAME, PARENTCATEGORY_ID) values (1, 'Classic', null)
insert into APP.CATEGORYENTITYM (ID, NAME, PARENTCATEGORY_ID) values (2, 'Gothic', null)
insert into APP.CATEGORYENTITYM (ID, NAME, PARENTCATEGORY_ID) values (3, 'Neoclassical', 1)
insert into APP.CATEGORYENTITYM (ID, NAME, PARENTCATEGORY_ID) values (4, 'Modern', null)
insert into APP.CATEGORYENTITYM (ID, NAME, PARENTCATEGORY_ID) values (5, 'Contemporary', null)
insert into APP.CATEGORYENTITYM (ID, NAME, PARENTCATEGORY_ID) values (6, 'Abstract', null)
insert into APP.CATEGORYENTITYM (ID, NAME, PARENTCATEGORY_ID) values (7, 'Expressionist', null)
insert into APP.CATEGORYENTITYM (ID, NAME, PARENTCATEGORY_ID) values (8, 'Pop Art', null)
insert into APP.CATEGORYENTITYM (ID, NAME, PARENTCATEGORY_ID) values (9, 'Illustration', null)
insert into APP.CATEGORYENTITYM (ID, NAME, PARENTCATEGORY_ID) values (10, 'Surrealism', null)
insert into APP.CATEGORYENTITY (NAME, PARENTCATEGORY_ID) SELECT NAME, PARENTCATEGORY_ID FROM APP.CATEGORYENTITYM WHERE ID NOT IN (SELECT ID FROM CATEGORYENTITY)
DROP TABLE CATEGORYENTITYM

CREATE TABLE CLIENTENTITYM (ID BIGINT NOT NULL, AGE INTEGER, NAME VARCHAR(255))
insert into APP.CLIENTENTITYM (ID, NAME, AGE) values (1, 'Joyce Little', 75)
insert into APP.CLIENTENTITYM (ID, NAME, AGE) values (2, 'Terry Hunter', 67)
insert into APP.CLIENTENTITYM (ID, NAME, AGE) values (3, 'Susan Mccoy', 27)
insert into APP.CLIENTENTITYM (ID, NAME, AGE) values (4, 'Rachel Alvarez', 50)
insert into APP.CLIENTENTITYM (ID, NAME, AGE) values (5, 'Jonathan Stanley', 15)
insert into APP.CLIENTENTITYM (ID, NAME, AGE) values (6, 'Henry Perez', 32)
insert into APP.CLIENTENTITYM (ID, NAME, AGE) values (7, 'Bruce Roberts', 79)
insert into APP.CLIENTENTITYM (ID, NAME, AGE) values (8, 'Bobby Reyes', 25)
insert into APP.CLIENTENTITYM (ID, NAME, AGE) values (9, 'Victor Washington', 54)
insert into APP.CLIENTENTITYM (ID, NAME, AGE) values (10, 'Brenda Larson', 49)
insert into APP.CLIENTENTITY (NAME, AGE) SELECT NAME, AGE FROM APP.CLIENTENTITYM WHERE ID NOT IN (SELECT ID FROM CLIENTENTITY)
DROP TABLE CLIENTENTITYM

CREATE TABLE CREDITCARDENTITYM (ID BIGINT NOT NULL, EXPIRATIONMONTH INTEGER, EXPIRATIONYEAR INTEGER, NAME VARCHAR(255), NUMBER VARCHAR(255), TYPE VARCHAR(255), CLIENT_ID BIGINT)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (1, 10, 2025, '5602234057548790', 'bankcard', 1)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (2, 1, 2021, '6761067870400087', 'maestro', 1)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (3, 7, 2023, '6393871750657740', 'instapayment', 2)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (4, 2, 2017, '633381214330376595', 'switch', 2)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (5, 4, 2023, '5602245674345303', 'china-unionpay', 3)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (6, 7, 2020, '3547520728417297', 'jcb', 3)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (7, 12, 2022, '3542058238650383', 'jcb', 4)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (8, 1, 2020, '3575344119632322', 'jcb', 4)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (9, 5, 2020, '67598540135798538', 'maestro', 5)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (10, 6, 2017, '3550984566154277', 'jcb', 5)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (11, 1, 2023, '5602236086399342602', 'china-unionpay', 6)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (12, 7, 2019, '5402625700099838', 'diners-club-us-ca', 6)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (13, 3, 2025, '340555797112739', 'americanexpress', 7)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (14, 10, 2025, '5602256256779587', 'bankcard', 7)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (15, 4, 2021, '3574954613706769', 'jcb', 8)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (16, 10, 2022, '5018163975704971780', 'maestro', 8)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (17, 11, 2021, '3531856862666374', 'jcb', 9)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (18, 9, 2025, '3588577514861963', 'jcb', 9)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (19, 2, 2018, '5552224030575820', 'diners-club-us-ca', 10)
insert into APP.CREDITCARDENTITYM (ID, EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) values (20, 8, 2021, '3528142947921232', 'jcb', 10)
insert into APP.CREDITCARDENTITY (EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID) SELECT EXPIRATIONMONTH, EXPIRATIONYEAR, NUMBER, TYPE, CLIENT_ID FROM APP.CREDITCARDENTITYM WHERE ID NOT IN (SELECT ID FROM CREDITCARDENTITY)
DROP TABLE CREDITCARDENTITYM

CREATE TABLE MESSAGEENTITYM (ID BIGINT NOT NULL, BODY VARCHAR(255), NAME VARCHAR(255), SENTDATE TIMESTAMP, SUBJECT VARCHAR(255), CLIENT_ID BIGINT)
insert into APP.MESSAGEENTITYM (ID, BODY, NAME, SENTDATE, SUBJECT, CLIENT_ID) values (1, 'sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus', '', '2016-09-05 02:34:51', 'nec molestie sed justo', 1)
insert into APP.MESSAGEENTITYM (ID, BODY, NAME, SENTDATE, SUBJECT, CLIENT_ID) values (2, 'in blandit ultrices enim lorem', '', '2016-08-22 18:07:11', 'quam suspendisse potenti nullam porttitor lacus at', 2)
insert into APP.MESSAGEENTITYM (ID, BODY, NAME, SENTDATE, SUBJECT, CLIENT_ID) values (3, 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in', '', '2016-01-25 21:28:52', 'nascetur ridiculus mus etiam vel augue vestibulum', 3)
insert into APP.MESSAGEENTITYM (ID, BODY, NAME, SENTDATE, SUBJECT, CLIENT_ID) values (4, 'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor', '', '2016-10-13 19:11:26', 'porttitor pede justo eu', 4)
insert into APP.MESSAGEENTITYM (ID, BODY, NAME, SENTDATE, SUBJECT, CLIENT_ID) values (5, 'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse', '', '2016-04-25 18:59:57', 'phasellus sit amet erat nulla', 5)
insert into APP.MESSAGEENTITYM (ID, BODY, NAME, SENTDATE, SUBJECT, CLIENT_ID) values (6, 'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla', '', '2016-05-14 04:59:13', 'dui proin leo odio', 6)
insert into APP.MESSAGEENTITYM (ID, BODY, NAME, SENTDATE, SUBJECT, CLIENT_ID) values (7, 'consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar', '', '2016-06-07 11:23:46', 'condimentum curabitur in libero', 7)
insert into APP.MESSAGEENTITYM (ID, BODY, NAME, SENTDATE, SUBJECT, CLIENT_ID) values (8, 'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat', '', '2016-02-22 07:56:58', 'phasellus in felis donec semper sapien a', 8)
insert into APP.MESSAGEENTITYM (ID, BODY, NAME, SENTDATE, SUBJECT, CLIENT_ID) values (9, 'nisl ut volutpat sapien arcu sed augue', '', '2016-05-18 02:25:56', 'ipsum dolor sit amet consectetuer adipiscing elit', 9)
insert into APP.MESSAGEENTITYM (ID, BODY, NAME, SENTDATE, SUBJECT, CLIENT_ID) values (10, 'augue quam sollicitudin vitae consectetuer eget rutrum at', '', '2016-10-20 10:38:25', 'platea dictumst morbi', 10)
insert into APP.MESSAGEENTITY (BODY, NAME, SENTDATE, SUBJECT, CLIENT_ID) SELECT BODY, NAME, SENTDATE, SUBJECT, CLIENT_ID FROM APP.MESSAGEENTITYM WHERE ID NOT IN (SELECT ID FROM MESSAGEENTITY)
DROP TABLE MESSAGEENTITYM

CREATE TABLE ARTWORKENTITYM (ID BIGINT NOT NULL, IMAGE VARCHAR(255), NAME VARCHAR(255), PRICE BIGINT, ARTIST_ID BIGINT, CREATIONDATE TIMESTAMP, DESCRIPTION VARCHAR(1000), OTHERIMAGES VARCHAR(1000), VIDEO VARCHAR(255), PLACESVISITED VARCHAR(1000), AWARDS VARCHAR(1000))
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (1, 'https://objects.artspan.com/member/mahoneyart/500/582541.jpg', '6th generation', 21764.74, 1, '2016-08-01 02:34:51', 'In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','https://objects.artspan.com/member/shad/500/109905.jpg,https://objects.artspan.com/member/wliu/500/2848612.jpg', 'https://www.youtube.com/embed//i9ChhgME9Bs', 'Bylym,Toyokawa,Knivsta','Roberts. Feeney and Leffler,Kling Inc,Legros-Kassulke')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (2, 'https://objects.artspan.com/member/atomicpharaoh/500/2196807.jpg', 'architecture', 44036.93, 1, '2016-08-02 02:34:51', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','https://objects.artspan.com/member/brianmc/500/2478980.jpg', 'https://youtu.be/Cmh024ohI3E','Bylym,Toyokawa,Knivsta','Bartell. Jacobs and Lubowitz	Feeney Inc,Cremin-Gerlach')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (3, 'https://objects.artspan.com/member/vanevanfuller/500/224240.jpg', 'needs-based', 76687.93, 2, '2016-08-03 02:34:51', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','https://objects.artspan.com/member/anek/500/183422.jpg,https://objects.artspan.com/member/shad/500/110132.jpg,https://objects.artspan.com/member/brianmc/500/2478980.jpg','https://www.youtube.com/embed//2zqhG-Pldls','Qingshuitang	Yuncheng, Parada de Todeia','Bartell. Jacobs and Lubowitz,	Feeney Inc, Cremin-Gerlach')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (4, 'https://objects.artspan.com/member/carlramsey/500/264548.jpg', 'methodical', 41973.41, 2, '2016-08-04 02:34:51','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'https://objects.artspan.com/member/kburke/500/2789348.jpg','https://www.youtube.com/embed//yEbgdS7Lsq4','Cogreg Wetan,Juanshui,Lolak', 'Skiles. Bailey and Flatley,Gibson-Sanford Pfeffer, Beatty and Sporer')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (5, 'https://objects.artspan.com/member/brendayork/500/1863941.jpg', 'bottom-line', 90622.06, 3, '2016-08-05 02:34:51', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','https://objects.artspan.com/member/dmarsh/500/1996590.jpg','https://www.youtube.com/embed//oww7oB9rjgw','Sucha	Xishan	Babice'	,'Hammes. Koelpin and Rau,	Larson-Hayes, Lueilwitz-Conn')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (6, 'https://objects.artspan.com/member/davwagenfeld/500/184271.jpg', 'Re-contextualized', 19361.52, 3, '2016-08-06 02:34:51', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'https://objects.artspan.com/member/rickyschembri/500/2059209.jpg,https://objects.artspan.com/member/harpoharpo/500/2533232.jpg','https://www.youtube.com/embed//q3HtKL64Wr4','Shamakhi	Pedroso	Nyeri',	'Champlin-Gutmann, Nikolaus and Sons, Schuppe Group')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (7, 'https://objects.artspan.com/member/rogeraslin/500/2565054.jpg', 'next generation', 4789.26, 4, '2016-08-07 02:34:51', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'https://objects.artspan.com/member/pennyprz/500/2851892.jpg,https://objects.artspan.com/member/lifestage/500/1234951.jpg','https://www.youtube.com/embed//sD3k3Xt6Btw','Cañuelas, Itabaiana, Jiashan',	'Runolfsdottir-Casper, Keefe-DuBuque, Rath-Hagenes')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (8, 'https://objects.artspan.com/member/gwendolynlewishuddleston/500/1941243.jpg', 'fresh-thinking', 73779.11, 4, '2016-08-08 02:34:51', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','https://objects.artspan.com/member/mickeycunningham/500/2631111.jpg', 'https://www.youtube.com/embed//sD3k3Xt6Btw','Ōnojo ahorovice, Ciseuseupan', 'Wunsch-Towne	Langosh-Heaney	Rempel, Heller and Dare')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (9, 'https://objects.artspan.com/member/heatherbarron/500/276906.jpg', 'homogeneous', 88206.97, 5, '2016-08-09 02:34:51', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.','https://objects.artspan.com/member/gguarino/500/2548648.jpg,https://objects.artspan.com/member/ccheuvront/500/2548848.jpg', 'https://www.youtube.com/embed//Dr8upZIT7u0', 'Sobral, Bantarmangu	Quanxi	Hills-Toy',	'Mayert, McDermott and Mueller,	Kutch-Welch')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (10, 'https://objects.artspan.com/member/rogeraslin/500/2845996.jpg', 'Sharable', 28502.66, 5, '2016-08-10 02:34:51',  'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','https://objects.artspan.com/member/zhouster/500/2824798.jpg','https://www.youtube.com/embed//q3HtKL64Wr4','Vilémov	San Diego, Barka','Maggio-Murazik	Schoen, Lockman and DuBuque,	Schulist LLC')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (11, 'https://objects.artspan.com/member/marthabaum/500/2186681.jpg', 'Public-key', 28379.09, 6, '2016-08-11 02:34:51', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','https://objects.artspan.com/member/harpoharpo/500/2365889.jpg,https://objects.artspan.com/member/rickyschembri/500/2059209.jpg,https://objects.artspan.com/member/harpoharpo/500/2533232.jpg','https://www.youtube.com/embed//oww7oB9rjgw','Tizgane, San Rafael	Yamada', 'Gerlach-Murphy, Thiel Group, Bogisich-Dietrich')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (12, 'https://objects.artspan.com/member/judyehp/500/2192643.jpg', 'initiative', 98516.11, 6, '2016-08-12 02:34:51','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'https://objects.artspan.com/member/sbrennan/500/2747597.jpg', 'https://www.youtube.com/embed//EtrIU5PEbpU', 'Itabaiana	Belanting, Amouguer',	'Lueilwitz-Mraz, Reynolds Inc')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (13, 'https://objects.artspan.com/member/brendayork/500/1002041.jpg', 'budgetary management', 15963.75, 7, '2016-08-13 02:34:51',  'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.','https://objects.artspan.com/member/rickyschembri/500/2102533.jpg,https://objects.artspan.com/member/denisehoward/500/1472481.jpg','https://youtu.be/q3HtKL64Wr4','Cañuelas, Itabaiana, Jiashan',	'Runolfsdottir-Casper, Keefe-DuBuque, Rath-Hagenes')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (14, 'https://objects.artspan.com/member/sgulino/500/278344.jpg', 'intangible', 99546.71, 7, '2016-08-14 02:34:51',  'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','https://objects.artspan.com/member/ccheuvront/500/2548848.jpg','https://youtu.be/EtrIU5PEbpU','Sucha	Xishan	Babice'	,'Hammes. Koelpin and Rau,	Larson-Hayes, Lueilwitz-Conn')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (15, 'https://objects.artspan.com/member/cjohnson/500/2260919.jpg', 'Compatible', 98783.49, 8, '2016-08-15 02:34:51', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','https://objects.artspan.com/member/pennyprz/500/2220741.jpg','https://youtu.be/yEbgdS7Lsq4','Shamakhi	Pedroso	Nyeri',	'Champlin-Gutmann, Nikolaus and Sons, Schuppe Group')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (16, 'https://objects.artspan.com/member/cjohnson/500/2829560.jpg', 'Public-key', 68463.84, 8, '2016-08-16 02:34:51', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','https://objects.artspan.com/member/dbuzdor/500/2552252.jpg','https://youtu.be/Ta-OnptUQSo','Itabaiana	Belanting	Amouguer',	'Lueilwitz-Mraz, Reynolds Inc')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (17, 'https://objects.artspan.com/member/miskra/500/19750.jpg', 'Realigned', 54132.46, 9, '2016-08-17 02:34:51', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet.','https://objects.artspan.com/member/sabrinamantle/500/539542.jpg','https://youtu.be/q3HtKL64Wr4','Sobral	Bantarmangu	Quanxi	Hills-Toy',	'Mayert, McDermott and Mueller,	Kutch-Welch')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (18, 'https://objects.artspan.com/member/rldegenhardt/500/2795315.jpg', 'groupware', 30238.92, 9, '2016-08-18 02:34:51','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','https://objects.artspan.com/member/denisehoward/500/1472481.jpg,https://objects.artspan.com/member/daniellepoling/500/2520446.jpg,https://objects.artspan.com/member/ctipworth/500/2549828.jpg','https://www.youtube.com/embed//Dr8upZIT7u0','Shamakhi	Pedroso	Nyeri',	'Champlin-Gutmann, Nikolaus and Sons, Schuppe Group')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (19, 'https://objects.artspan.com/member/heatherbarron/500/936971.jpg', 'Future-proofed', 26584.59, 10, '2016-08-19 02:34:51', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'https://objects.artspan.com/member/minako/500/524332.jpg', 'https://www.youtube.com/embed//EtrIU5PEbpU','Dhanot	Nampula	Petrikov	Prohaska', 'Group	Beahan, Mosciski and Connell, Kovacek-Farrell')
insert into APP.ARTWORKENTITYM (ID, IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE,DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) values (20, 'https://objects.artspan.com/member/christinaramos/500/2691074.jpg', 'Switchable', 16536.13, 10, '2016-08-20 02:34:51','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','https://objects.artspan.com/member/dbuzdor/500/2552252.jpg','https://youtu.be/y0MzlcQ00MY','Sucha	Xishan	Babice'	,'Hammes. Koelpin and Rau,	Larson-Hayes, Lueilwitz-Conn')
insert into APP.ARTWORKENTITY (IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE, DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS) SELECT IMAGE, NAME, PRICE, ARTIST_ID, CREATIONDATE, DESCRIPTION, OTHERIMAGES, VIDEO, PLACESVISITED, AWARDS FROM APP.ARTWORKENTITYM WHERE ID NOT IN (SELECT ID FROM ARTWORKENTITY)
DROP TABLE ARTWORKENTITYM

insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (1, 6)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (1, 4)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (2, 1)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (3, 4)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (3, 8)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (4, 7)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (4, 2)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (5, 8)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (5, 1)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (6, 9)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (6, 4)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (7, 3)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (7, 9)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (8, 7)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (8, 9)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (9, 9)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (9, 3)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (10, 8)
insert into APP.ARTWORKENTITY_CATEGORYENTITY (ARTWORKENTITY_ID, CATEGORY_ID) values (10, 10)

CREATE TABLE ITEMENTITYM (ID BIGINT NOT NULL, NAME VARCHAR(255), QTY BIGINT, ARTWORK_ID BIGINT, CLIENT_ID BIGINT, PRODUCT_ID BIGINT)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (1, 'Bigtax', 15, 9, 1, 2)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (2, 'Regrant', 4, 2, 7, 1)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (3, 'Bytecard', 16, 7, 1, 2)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (4, 'Wrapsafe', 20, 1, 8, 3)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (5, 'Latlux', 5, 5, 7, 6)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (6, 'Fixflex', 6, 2, 6, 1)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (7, 'Sub-Ex', 13, 16, 8, 10)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (8, 'Aerified', 14, 14, 10, 9)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (9, 'Y-Solowarm', 10, 12, 2, 3)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (10, 'Zamit', 16, 4, 7, 3)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (11, 'Zoolab', 15, 15, 9, 5)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (12, 'Tresom', 16, 8, 9, 6)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (13, 'Voyatouch', 7, 15, 3, 6)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (14, 'Job', 3, 17, 2, 5)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (15, 'Zathin', 6, 17, 4, 4)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (16, 'Cardguard', 5, 8, 10, 3)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (17, 'Cookley', 3, 13, 1, 2)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (18, 'Fix San', 3, 13, 3, 5)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (19, 'Rank', 14, 5, 4, 4)
insert into APP.ITEMENTITYM (ID, NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) values (20, 'Zontrax', 18, 3, 3, 3)
insert into APP.ITEMENTITY (NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID) SELECT NAME, QTY, ARTWORK_ID, CLIENT_ID, PRODUCT_ID FROM APP.ITEMENTITYM WHERE ID NOT IN (SELECT ID FROM ITEMENTITY)
DROP TABLE ITEMENTITYM

CREATE TABLE QUALIFYENTITYM (ID BIGINT, MESSAGE VARCHAR(255), NAME VARCHAR(255), SCORE BIGINT, ARTWORK_ID BIGINT, CLIENT_ID BIGINT)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (1, 'vestibulum ante ipsum primis in faucibus', '', 2, 12, 3)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (2, 'tellus in sagittis dui vel nisl duis ac', '', 2, 7, 10)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (3, 'odio porttitor id consequat in consequat ut nulla', '', 0, 5, 7)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (4, 'justo pellentesque viverra pede ac', '', 3, 15, 6)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (5, 'ac neque duis bibendum morbi non quam nec dui', '', 3, 14, 4)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (6, 'semper porta volutpat quam pede lobortis ligula sit', '', 0, 19, 4)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (7, 'non lectus aliquam sit amet diam in magna', '', 2, 4, 6)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (8, 'felis eu sapien cursus vestibulum proin eu', '', 2, 16, 9)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (9, 'quis lectus suspendisse potenti in eleifend quam a odio in', '', 4, 11, 3)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (10, 'mi pede malesuada in imperdiet et commodo', '', 4, 18, 10)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (11, 'interdum eu tincidunt in leo maecenas', '', 0, 19, 5)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (12, 'justo maecenas rhoncus aliquam lacus', '', 2, 9, 10)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (13, 'nullam molestie nibh in lectus pellentesque', '', 0, 16, 2)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (14, 'ut odio cras mi pede malesuada in', '', 3, 11, 1)
insert into APP.QUALIFYENTITYM (ID, MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) values (15, 'amet justo morbi ut odio cras mi pede malesuada', '', 1, 1, 1)
insert into APP.QUALIFYENTITY (MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID) SELECT MESSAGE, NAME, SCORE, ARTWORK_ID, CLIENT_ID FROM APP.QUALIFYENTITYM WHERE ID NOT IN (SELECT ID FROM QUALIFYENTITY)
DROP TABLE QUALIFYENTITYM
