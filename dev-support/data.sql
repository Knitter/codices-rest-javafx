INSERT INTO account (username, email, name, active, password, createdAt, updatedAt, resetToken)
VALUES ('knitter', 'knitter.is@gmai.com', 'Sérgio Lopes', 1, '12345678', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '');

INSERT INTO author(id, name, surname, ownedById)
VALUES (1, 'Scott', 'Adams', 1),
       (2, 'Kevin J.', 'Anderson', 1),
       (3, 'Isaac', 'Asimov', 1),
       (4, 'Petter V.', 'Brett', 1),
       (5, 'Dave', 'Bara', 1),
       (6, 'Raymond E.', 'Feist', 1),
       (7, 'Forsyth', 'Frederick', 1),
       (8, 'Richard', 'Ford', 1),
       (9, 'Gillian', 'Flynn', 1),
       (10, 'Terry', 'Goodkind', 1),
       (11, 'Paul', 'Hoffman', 1);

INSERT INTO series(id, name, ownedById, completed)
VALUES (1, 'The Saga of the Shadows', 1, 0),
       (2, 'Foundation', 1, 1),
       (3, 'Ciclo dos Demónios', 1, 0),
       (4, 'The Lightship Chronicles', 1, 0),
       (5, 'The Riftwar Saga', 1, 1),
       (6, 'The Empire Trilogy', 1, 1),
       (7, 'Krondor''s Sons', 1, 0),
       (8, 'The Serpentwar Saga', 1, 0),
       (9, 'Chaoswar Saga', 1, 0),
       (10, 'The Riftware Legacy', 1, 0),
       (11, 'Steelhaven', 1, 0),
       (12, 'Saga A Espada da Verdade', 1, 0);

-- ebook, audio, paper
INSERT INTO item (id, title, subtitle, ownedById, type, translated, read, copies, isbn, language, orderInSeries,
                  duplicatesId, seriesId, favorite)
VALUES (1, 'Liberdade é só mais uma palavra para as pessoas descobrirem que és incompetente', NULL, 1, 'paper', 1, 0, 1,
        '9789892315997', 'Portuguese', NULL, NULL, NULL, 0),
       (2, 'The Dark Between the Stars', NULL, 1, 'paper', 0, 0, 1, '9781840836784', 'English', 1, NULL, 1, 0),
       (3, 'Foundation', NULL, 1, 'paper', 1, 0, 1, '9780586010808', 'English', 1, NULL, 2, 0),
       (4, 'Second Foundation', NULL, 1, 'paper', 1, 0, 1, '9780586017135', 'English', 3, NULL, 2, 0),
       (5, 'Prelude to Foundation', NULL, 1, 'paper', 1, 0, 1, '9780586071113', 'English', 0, NULL, 2, 0),
       (6, 'Foundation & Earth', NULL, 1, 'paper', 1, 0, 1, '9780586071106', 'English', 5, NULL, 2, 0),
       (7, 'Foundation''s Edge', NULL, 1, 'paper', 1, 0, 1, '9780586058398', 'English', 4, NULL, 2, 0),
       (8, 'Foundation and Empire', NULL, 1, 'paper', 1, 0, 1, '9780586013557', 'English', 2, NULL, 2, 0),
       (9, 'Homem Pintado', NULL, 1, 'paper', 1, 0, 1, '9789895576677', 'Portuguese', 1, NULL, 3, 0),
       (10, 'Lança  do Deserto', NULL, 1, 'paper', 1, 0, 1, '9789895577156', 'Portuguese', 2, NULL, 3, 0),
       (11, 'A Guerra Diurna', NULL, 1, 'paper', 1, 0, 1, '9789892324494', 'Portuguese', 3, NULL, 3, 0),
       (12, 'O Grande Bazar e outras histórias', NULL, 1, 'paper', 1, 0, 1, '9789892331362', 'Portuguese', NULL, NULL,
        NULL, 0),
       (13, 'O Trono dos Crânios', NULL, 1, 'paper', 1, 0, 1, '9789892334516', 'Portuguese', NULL, NULL, NULL, 0),
       (14, 'Impulse', NULL, 1, 'paper', 1, 0, 1, '9780756410667', 'English', 1, NULL, 4, 0),
       (15, 'Starbound', NULL, 1, 'paper', 1, 0, 1, '9781473616110', 'English', 2, NULL, 4, 0),
       (16, 'Magician', NULL, 1, 'paper', 1, 0, 1, '9780586217832', 'English', 1, NULL, 5, 0),
       (17, 'Silverthorn',NULL, 1, 'paper', 1, 0, 1, '9780007229420', 'English', 2, NULL, 5, 0),
       (18, 'A Darkness at Sethanon', NULL, 1, 'paper', 1, 0, 1, '9780007229437', 'English', 3, NULL, 5, 0),
       (19, 'Daughter of the Empire', NULL, 1, 'paper', 1, 0, 1, '9780586074817', 'English', 1, NULL, 6, 0),
       (20, 'Servant of the Empire', NULL, 1, 'paper', 1, 0, 1, '9780586203811', 'English', 2, NULL, 6, 0),
       (21, 'Mistress of the Empire	', NULL, 1, 'paper', 1, 0, 1, '9780586203798', 'English', 3, NULL, 6, 0),
       (22, 'Prince of the Blood', NULL, 1, 'paper', 1, 0, 1, '9780007176168', 'English', 1, NULL, 7, 0),
       (23, 'The King''s Buccaneer', NULL, 1, 'paper', 1, 0, 1, '9780586203224', 'English', 2, NULL, 7, 0),
       (24, 'Shadow of a Dark Queen', NULL, 1, 'paper', 1, 0, 1, '9780006480266', 'English', 1, NULL, 8, 0),
       (25, 'Rise of a Merchant Prince', NULL, 1, 'paper', 1, 0, 1, - '9780006497011', 'English', 2, NULL, 8, 0),
       (26, 'Rage of a Demon King', NULL, 1, 'paper', 1, 0, 1, '9780006482987', 'English', 3, NULL, 8, 0),
       (27, 'Shards of a Broken Crown', NULL, 1, 'paper', 1, 0, 1, '9780006483489', 'English', 4, NULL, 8, 0),
       (28, 'Magician''s End', NULL, 1, 'paper', 1, 0, 1, '9780007264803', 'English', NULL, NULL, 9, 0),
       (29, 'At the Gates of Darkness', NULL, 1, 'paper', 1, 0, 1, '9780007264728', 'English', NULL, NULL, NULL, 0),
       (30, 'Rides a Dread Legion', NULL, 1, 'paper', 1, 0, 1, '9780007342587', 'English', NULL, NULL, NULL, 0),
       (31, 'Krondor: The assassins', NULL, 1, 'paper', 1, 0, 1, '9780008311261', 'English', NULL, NULL, 10, 0),
       (32, 'The Kill List', NULL, 1, 'paper', 1, 0, 1, '9780552169486', 'English', NULL, NULL, NULL, 0),
       (33, 'The Shatered Crown', NULL, 1, 'paper', 1, 0, 1, '9780755394074', 'English', 2, NULL, 11, 0),
       (34, 'Herald of the Storm', NULL, 1, 'paper', 1, 0, 1, '9781472203922', 'English', 1, NULL, 11, 0),
       (35, 'Lord of Ashes', NULL, 1, 'paper', 1, 0, 1, '9780755394104', 'English', 3, NULL, 11, 0),
       (36, 'Gone Girl', NULL, 1, 'paper', 1, 0, 1, '9780553419085', 'English', NULL, NULL, NULL, 0),
       (37, 'Em Parte Incerta', NULL, 1, 'paper', 1, 0, 1, '9799722525572', 'Portuguese', NULL, 36, NULL, 0),
       (38, 'Primeira Regra dos Feiticeiros, Parte I', NULL, 1, 'paper', 1, 0, 1, '9789720046840', 'Portuguese', 1,
        NULL, 12, 0), --	Arco 1: Darken Rahl
       (39, 'A Primeira Regra dos Feiticeiros, Parte  II', NULL, 1, 'paper', 1, 0, 1, '9789720046970', 'Portuguese', 2,
        NULL, 12, 0),
       (40, 'A Pedra das Lágrimas, Parte I', NULL, 1, 'paper', 1, 0, 1, '9789720047489', 'Portuguese', 3, NULL, 12, 0),
       (41, 'A Pedra das Lágrimas, Parte II', NULL, 1, 'paper', 1, 0, 1, '9789220047687', 'Portuguese', 5, NULL, 12, 0),
       (42, 'O Sangue da Virtude', NULL, 1, 'paper', 1, 0, 1, '9789720047922', 'Portuguese', NULL, NULL, NULL, 0),
       (43, 'The Left Hand of Good', NULL, 1, 'paper', 1, 0, 1, '9780141042374', 'English', 1, NULL, NULL, 0),
       (44, 'The Last Four Things', NULL, 1, 'paper', 1, 0, 1, '9780718155209', 'English', 2, NULL, NULL, 0),
       (45, 'The Beating o His Wings', NULL, 1, 'paper', 1, 0, 1, '9780141042404', 'English', 3, NULL, NULL, 0);