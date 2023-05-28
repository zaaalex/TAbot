INSERT INTO language (NAME) VALUES ('en');
INSERT INTO language (NAME) VALUES ('ru');

INSERT INTO errorType (ID, NAME) VALUES (1, 'send');
INSERT INTO errorType (ID, NAME) VALUES (2, 'system');
INSERT INTO errorType (ID, NAME) VALUES (3, 'jam');

INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (1, '1101', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (2, '1102', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (3, '1104', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (4, '1105', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (5, '1106', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (6, '2101', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (7, '2102', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (8, '2103', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (9, '2201', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (10, '2202', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (11, '2204', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (12, '3101', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (13, '3201', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (14, '4803', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (15, '1103', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (16, '1131', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (17, '1132', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (18, '2231', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (19, '2203', 'send');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (20, 'J0000', 'jam');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (21, 'J0100', 'jam');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (22, 'J0101', 'jam');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (23, 'J0102', 'jam');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (24, 'J0103', 'jam');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (25, 'J0104', 'jam');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (26, 'J0105', 'jam');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (27, 'J0106', 'jam');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (28, 'J0501', 'jam');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (29, 'C0030', 'system');
INSERT INTO error(ID, CODE, TYPE_NAME) VALUES (30, 'C0070', 'system');

INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (1, 1, 'SMTP/POP3 server does not exist on the network.', 'en', 'Scan to E-mail error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (2, 2, 'Login to the SMTP/POP3 server has failed.', 'en', 'Scan to E-mail error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (3, 3, 'Destination address domain is restricted and transmission is denied.', 'en', 'Scan to E-mail error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (4, 4, 'Invalid SMTP protocol', 'en', 'Scan to E-mail error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (5, 5, 'The sender address is not set.
', 'en', 'Scan to E-mail error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (6, 6, 'Connection to the SMTP/POP3 server has failed.', 'en', 'Scan to E-mail error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (7, 7, 'Connection to the SMTP/POP3 server has failed. (Connection timeout)', 'en', 'Scan to E-mail error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (8, 8, 'The server cannot establish communication.', 'en', 'Scan to E-mail error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (9, 9, 'Communication to the SMTP/POP3 server has failed', 'en', 'Scan to E-mail error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (10, 10, 'Communication to the SMTP/POP3 server has failed. (Connection timeout)', 'en', 'Scan to E-mail error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (11, 11, 'The size of scanning exceeded its limit.', 'en', 'Scan to E-mail error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (12, 12, 'SMTP/POP3 server responded with an error', 'en', 'Scan to E-mail error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (13, 13, 'No SMTP authentication is found.', 'en', 'Scan to E-mail error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (14, 14, 'Failed to establish the SSL session.', 'en', 'Scan to E-mail error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (15, 1, 'Сервер SMTP/POP3 не существует в сети.', 'ru', 'Ошибка сканирования в электронную почту');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (16, 2, 'Ошибка входа на сервер SMTP/POP3.', 'ru', 'Ошибка сканирования в электронную почту');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (17, 3, 'Домен адреса назначения ограничен, и передача запрещена.', 'ru', 'Ошибка сканирования в электронную почту');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (18, 4, 'Неверный протокол SMTP', 'ru', 'Ошибка сканирования в электронную почту');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (19, 5, 'Адрес отправителя не задан.', 'ru', 'Ошибка сканирования в электронную почту');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (20, 6, 'Ошибка подключения к серверу SMTP/POP3.', 'ru', 'Ошибка сканирования в электронную почту');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (21, 7, 'Ошибка подключения к серверу SMTP/POP3. (Время соединения вышло)', 'ru', 'Ошибка сканирования в электронную почту');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (22, 8, 'Сервер не может установить связь.', 'ru', 'Ошибка сканирования в электронную почту');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (23, 9, 'Ошибка связи с сервером SMTP/POP3.', 'ru', 'Ошибка сканирования в электронную почту');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (24, 10, 'Ошибка связи с сервером SMTP/POP3. (Время соединения вышло)', 'ru', 'Ошибка сканирования в электронную почту');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (25, 11, 'Размер сканирования превысил допустимый предел.', 'ru', 'Ошибка сканирования в электронную почту');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (26, 12, 'Сервер SMTP/POP3 ответил с ошибкой.', 'ru', 'Ошибка сканирования в электронную почту');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (27, 13, 'Аутентификация SMTP не найдена.', 'ru', 'Ошибка сканирования в электронную почту');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (28, 14, 'Не удалось установить сеанс SSL.', 'ru', 'Ошибка сканирования в электронную почту');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (29, 1, 'FTP server does not exist on the network.', 'en', 'Scan to FTP error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (30, 2, 'Login to the FTP server has failed.
', 'en', 'Scan to FTP error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (31, 4, 'FTP protocol is not enabled.', 'en', 'Scan to FTP error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (32, 6, 'Initializing TLS has failed.', 'en', 'Scan to FTP error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (33, 7, 'Connection to the FTP server has failed.', 'en', 'Scan to FTP error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (34, 8, 'Connection with the FTP server has failed. (Timeout)', 'en', 'Scan to FTP error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (35, 9, 'The server cannot establish communication.', 'en', 'Scan to FTP error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (36, 10, 'Communication with the FTP server has failed.', 'en', 'Scan to FTP error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (37, 11, 'Communication with the FTP server has failed. (Timeout)', 'en', 'Scan to FTP error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (38, 1, 'FTP-сервер не существует в сети.', 'ru', 'Ошибка сканирования на FTP');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (39, 2, 'Ошибка входа на FTP-сервер.', 'ru', 'Ошибка сканирования на FTP');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (40, 4, 'Протокол FTP не включен.', 'ru', 'Ошибка сканирования на FTP');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (41, 6, 'Не удалось инициализировать TLS.', 'ru', 'Ошибка сканирования на FTP');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (42, 7, 'Ошибка подключения к FTP-серверу.', 'ru', 'Ошибка сканирования на FTP');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (43, 8, 'Не удалось установить соединение с FTP-сервером. (Тайм-аут)', 'ru', 'Ошибка сканирования на FTP');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (44, 9, 'Сервер не может установить связь.', 'ru', 'Ошибка сканирования на FTP');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (45, 10, 'Связь с FTP-сервером не удалась.', 'ru', 'Ошибка сканирования на FTP');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (46, 11, 'Связь с FTP-сервером не удалась. (Тайм-аут)', 'ru', 'Ошибка сканирования на FTP');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (47, 1, 'Destination host does not exist on the network.', 'en', 'Scan to SMB error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (48, 2, 'Login to the host has failed.', 'en', 'Scan to SMB error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (49, 4, 'SMB protocol is not enabled.', 'en', 'Scan to SMB error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (50, 6, 'Login to the host has failed.', 'en', 'Scan to SMB error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (51, 9, 'Writing scanned data has failed', 'en', 'Scan to SMB error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (52, 1, 'Хост назначения не существует в сети.', 'ru', 'Ошибка сканирования в SMB');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (53, 2, 'Авторизация на хосте не удалась.', 'ru', 'Ошибка сканирования в SMB');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (54, 4, 'Протокол SMB не включен.', 'ru', 'Ошибка сканирования в SMB');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (55, 6, 'Авторизация на хосте не удалась.', 'ru', 'Ошибка сканирования в SMB');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (56, 9, 'Не удалось записать отсканированные данные', 'ru', 'Ошибка сканирования в SMB');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (57, 19, 'No response from the host during a certain period of time.', 'en', 'Scan to FTP error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (58, 19, 'No response from the host during a certain period of time.', 'en', 'Scan to SMB error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (59, 19, 'Отсутствие ответа от хоста в течение определенного периода времени.', 'ru', 'Ошибка сканирования на FTP');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (60, 19, 'Отсутствие ответа от хоста в течение определенного периода времени.', 'ru', 'Ошибка сканирования в SMB');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (61, 15, 'Destination host, folder, and/or file names are invalid.', 'en', 'Scan to SMB error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (62, 15, 'Недопустимые имена хоста назначения, папки и/или файла.', 'ru', 'Ошибка сканирования в SMB');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (63, 16, 'Initializing TLS has failed.', 'en', 'Scan to FTP error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (64, 17, 'TLS negotiation has failed.', 'en', 'Scan to FTP error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (65, 18, 'Communication with the FTP server has failed. (FTPS communication)', 'en', 'Scan to FTP error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (66, 16, 'Не удалось инициализировать TLS.', 'ru', 'Ошибка сканирования на FTP');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (67, 17, 'Сбой согласования TLS.', 'ru', 'Ошибка сканирования на FTP');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (68, 18, 'Связь с FTP-сервером не удалась. (FTP-связь)', 'ru', 'Ошибка сканирования на FTP');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (69, 12, 'FTP server responded with an error.', 'en', 'Scan to FTP error code');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (70, 12, 'FTP-сервер ответил ошибкой.', 'ru', 'Ошибка сканирования на FTP');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (71, 20, 'The power was turned on while the unspecified conveying sensor turns on.', 'en', 'Power ON jam');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (72, 21, 'The firmware does not properly activate.', 'en', 'Paper jam caused by the firmware factor');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (73, 22, 'The firmware does not properly activate.', 'en', 'Paper jam caused by the firmware factor');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (74, 23, 'The firmware does not properly activate.', 'en', 'Paper jam caused by the firmware factor');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (75, 24, 'The firmware does not properly activate.', 'en', 'Paper jam caused by the firmware factor');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (76, 25, 'The firmware does not properly activate.', 'en', 'Paper jam caused by the firmware factor');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (77, 26, 'The firmware does not properly activate.', 'en', 'Paper jam caused by the firmware factor');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (78, 27, 'The firmware does not properly activate.', 'en', 'Paper jam caused by the firmware factor');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (79, 20, 'Питание было включено, когда неуказанный датчик подачи включен.', 'ru', 'Замятие при включенном питании');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (80, 21, 'Прошивка неправильно активируется.', 'ru', 'Замятие бумаги, вызванное проблемами с прошивкой');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (81, 22, 'Прошивка неправильно активируется.', 'ru', 'Замятие бумаги, вызванное проблемами с прошивкой');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (82, 23, 'Прошивка неправильно активируется.', 'ru', 'Замятие бумаги, вызванное проблемами с прошивкой');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (83, 24, 'Прошивка неправильно активируется.', 'ru', 'Замятие бумаги, вызванное проблемами с прошивкой');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (84, 25, 'Прошивка неправильно активируется.', 'ru', 'Замятие бумаги, вызванное проблемами с прошивкой');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (85, 26, 'Прошивка неправильно активируется.', 'ru', 'Замятие бумаги, вызванное проблемами с прошивкой');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (86, 27, 'Прошивка неправильно активируется.', 'ru', 'Замятие бумаги, вызванное проблемами с прошивкой');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (87, 28, 'The next sensor does not turn on after the feed clutch turns on when feeding from cassette 1', 'en', 'No paper feed from cassette 1');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (88, 28, 'During paper feed from cassette 1, the leading edge does not come out from the cassette (no mark of paper feed at the leading edge).', 'en', 'No marks of paper feed at the paper leading edge and the lift plate does not ascend');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (89, 28, 'During paper feed from cassette 1, the leading edge does not come out from the cassette (no mark of paper feed at the leading edge).', 'en', 'No marks of paper feed at the paper leading edge and the lift plate
ascends but paper feed drive does not start');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (90, 28, 'The registration sensor does not turn on after the feed clutch turns on when feeding from cassette 1.', 'en', 'The paper stops at the paper feed roller.');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (91, 28, 'The registration sensor does not turn on after the feed clutch turns on when feeding from cassette 1.', 'en', 'The leading edge comes out from the cassette ');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (92, 28, 'Датчик не включается после включения сцепления подачи при подаче из лотка 1', 'ru', 'Нет подачи бумаги из лотка 1');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (93, 28, 'Во время подачи бумаги из лотка 1 передний край не выходит из лотка (нет метки подачи бумаги на переднем крае).', 'ru', 'Нет меток подачи бумаги на переднем крае бумаги, и плита подъема не поднимается');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (94, 28, 'Во время подачи бумаги из лотка 1 передний край не выходит из лотка (нет метки подачи бумаги на переднем крае).', 'ru', 'Нет меток подачи бумаги на переднем крае бумаги, и плита подъема поднимается, но привод подачи бумаги не запускается');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (95, 28, 'Датчик регистрации не включается после включения сцепления подачи при подаче из лотка 1.', 'ru', 'Бумага останавливается на ролике подачи бумаги.');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (96, 28, 'Датчик регистрации не включается после включения сцепления подачи при подаче из лотка 1.', 'ru', 'Передний край выходит из лотка.');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (97, 29, 'The FAX processing cannot be continued due to the firmware error.
', 'en', 'FAX PWB system error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (98, 29, 'Обработка факса не может быть продолжена из-за ошибки прошивки.', 'ru', 'Системная ошибка PWB факса');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (99, 30, 'Abnormal detection of FAX control PWB incompatibility in the initial communication with the FAX control PWB, any normal communication command is not transmitted.', 'en', 'FAX PWB incompatible detection error');
INSERT INTO errorCondition (ID, ERROR_ID, DESCRIPTION, LANGUAGE_NAME, NAME) VALUES (100, 30, 'Ненормальное обнаружение несовместимости PWB управления факсом при начальной связи с PWB управления факсом, никакая команда нормальной связи не передается.', 'ru', 'Ошибка обнаружения несовместимости платы факса');

INSERT INTO product(ID, NAME) VALUES (1, 'P-C3062iMFP');
INSERT INTO product(ID, NAME) VALUES (2, 'P-C3066iMFP');
INSERT INTO product(ID, NAME) VALUES (3, 'P-C3562iMFP');
INSERT INTO product(ID, NAME) VALUES (4, 'P-C3566iMFP');

INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (1, 20);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (2, 20);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (3, 20);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (4, 20);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (1, 21);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (2, 21);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (3, 21);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (4, 21);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (1, 22);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (2, 22);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (3, 22);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (4, 22);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (1, 23);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (2, 23);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (3, 23);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (4, 23);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (1, 24);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (2, 24);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (3, 24);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (4, 24);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (1, 25);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (2, 25);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (3, 25);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (4, 25);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (1, 26);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (2, 26);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (3, 26);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (4, 26);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (1, 27);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (2, 27);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (3, 27);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (4, 27);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (1, 28);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (2, 28);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (3, 28);
INSERT INTO product_errorJam (PRODUCT_ID, ERROR_ID) VALUES (4, 28);

INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (1, 1, 'Checking the SMTP/POP3
server name', 'SMTP / POP3 server name is incorrect.', 'Correct the SMTP / POP3
server name at [Function Settings] > [E-mail] via the command center', 1);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (2, 2, 'Checking the settings', 'The network settings are incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 1);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (3, 3, 'Checking the settings', 'The network settings that the main unit is connected to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 1);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (4, 1, 'Checking the SMTP/POP3
server name', 'The user name or the password is incorrect.', 'Correct the SMTP / POP3
user name or password at
[Function Settings] > [E-mail]
via the command center.', 2);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (5, 2, 'Checking the SMTP/POP3
server', 'The SMTP/POP3 server settings are incorrect.', 'Correct the protocol in the
Network Settings via the
Command Center.', 2);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (6, 1, 'Checking the settings', 'Destination address
domain is restricted and
transmission is denied.', 'Correct the settings in the
Network Settings via the
Command Center.', 3);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (7, 1, 'Checking the settings', 'Invalid SMTP protocol', 'Correct the protocol in the
Network Settings via the
Command Center.', 4);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (8, 1, 'Checking the settings', 'The sender address is not
set.', 'Correct the protocol in the
Network Settings via the
Command Center.', 5);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (9, 1, 'Checking the SMTP/POP3
server name', 'SMTP / POP3 server
name is incorrect.', 'Correct the SMTP / POP3
server name at [Function Settings] > [E-mail] via the command center.', 6);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (10, 2, 'Checking the LAN cable', 'The LAN cable is not connected to the main unit.', 'Connect the LAN cable to the
main unit.', 6);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (11, 3, 'Checking the SMTP/POP3
port No.', 'The port number is incorrect.', 'Correct the SMTP/POP3 port
number', 6);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (12, 4, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 6);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (13, 5, 'Checking the settings', 'The network settings that
the main unit is connected
to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 6);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (14, 6, 'Checking the settings', 'The SMTP/POP3 server
settings are incorrect.', 'Correct the protocol in the
Network Settings via the
Command Center', 6);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (15, 1, 'Checking the SMTP/POP3
server name', 'SMTP / POP3 server
name is incorrect.', 'Correct the SMTP / POP3
server name at [Function Settings] > [E-mail] via the command center.', 7);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (16, 2, 'Checking the LAN cable', 'The LAN cable is not connected to the main unit.', 'Connect the LAN cable to the
main unit.', 7);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (17, 3, 'Checking the SMTP/POP3
port No.', 'The port number is incorrect.', 'Correct the SMTP/POP3 port
number', 7);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (18, 4, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 7);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (19, 5, 'Checking the settings', 'The network settings that
the main unit is connected
to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 7);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (20, 1, 'Checking the SMTP/POP3
server name', 'SMTP / POP3 server
name is incorrect.', 'Correct the SMTP / POP3
server name at [Function Settings] > [E-mail] via the command center', 8);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (21, 2, 'Checking the SMTP/POP3
port No.', 'The port number is incorrect.', 'Correct the SMTP/POP3 port
number.', 8);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (22, 3, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 8);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (23, 4, 'Checking the settings', 'The network settings that
the main unit is connected
to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 8);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (24, 5, 'Checking the settings', 'The SMTP/POP3 server
settings are incorrect.', 'Correct the protocol in the
Network Settings via the
Command Center.', 8);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (25, 1, 'Checking the settings', 'The network settings are incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 9);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (26, 2, 'Checking the SMTP/POP3
port No.', 'The network settings that
the main unit is connected
to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 9);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (27, 1, 'Checking the settings', 'The network settings are incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 10);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (28, 2, 'Checking the SMTP/POP3
port No.', 'The network settings that
the main unit is connected
to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 10);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (29, 1, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 11);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (30, 1, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 12);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (31, 2, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 12);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (32, 3, 'Checking the settings', 'The SMTP/POP3 server
settings are incorrect.', 'Correct the protocol in the
Network Settings via the
Command Center.', 12);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (33, 1, 'Checking the settings', 'The SMTP server settings
are incorrect.', 'Set the correct SMTP
Authentication Protocol at
[Function Settings] > [E-mail]
via the command center', 13);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (34, 1, 'Checking the self-signed
certificate', 'The self-signed certificate
of the device is incorrect.', 'Correct the certificates in the
Security Settings via the
Command Center', 14);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (35, 2, 'Checking the settings', 'The service certificate settings are incorrect.', 'Correct the certificates in the
Security Settings via the
Command Center', 14);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (36, 3, 'Checking the settings', 'The SMTP/POP3 settings
are incorrect.', 'Correct the protocol in the
Network Settings via the
Command Center', 14);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (37, 1, 'Проверка SMTP/POP3
имя сервера', 'Неверное имя сервера SMTP/POP3.', 'Исправить SMTP/POP3
имя сервера в [Настройки функций] > [Электронная почта] через центр управления', 15);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (38, 2, 'Проверка настроек', 'Неправильные сетевые настройки.', 'Исправьте настройки в
Настройки сети через
Командный центр.', 15);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (39, 3, 'Проверка настроек', 'Сетевые настройки, к которым подключен основной блок, неверны.', 'Исправьте настройки сети
к которому подключен основной блок.', 15);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (40, 1, 'Проверка SMTP/POP3
имя сервера', 'Имя пользователя или пароль неверны.', 'Исправить SMTP/POP3
имя пользователя или пароль на
[Настройки функций] > [Электронная почта]
через командный центр.', 16);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (41, 2, 'Проверка SMTP/POP3
сервер', 'Неверные настройки сервера SMTP/POP3.', 'Исправьте протокол в
Настройки сети через
Командный центр.', 16);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (42, 1, 'Проверка настроек', 'Адрес назначения
домен ограничен и
передача запрещена.', 'Исправьте настройки в
Настройки сети через
Командный центр.', 17);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (43, 1, 'Проверка настроек', 'Неверный SMTP-протокол', 'Исправьте протокол в
Настройки сети через
Командный центр.', 18);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (44, 1, 'Проверка настроек', 'Адрес отправителя не
набор.', 'Исправьте протокол в
Настройки сети через
Командный центр.', 19);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (45, 1, 'Проверка SMTP/POP3
имя сервера', 'SMTP/POP3 сервер
имя неверно.', 'Исправить SMTP/POP3
имя сервера в [Настройки функций] > [Электронная почта] через центр управления.', 20);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (46, 2, 'Проверка кабеля локальной сети', 'Кабель LAN не подключен к основному блоку.', 'Подсоедините кабель локальной сети к
основной блок.', 20);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (47, 3, 'Проверка SMTP/POP3
порт №', 'Неверный номер порта.', 'Исправьте порт SMTP/POP3
число', 20);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (48, 4, 'Проверка настроек', 'Настройки сети
неправильно.', 'Исправьте настройки в
Настройки сети через
Командный центр.', 20);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (49, 5, 'Проверка настроек', 'Сетевые настройки, которые
основной блок подключен
неверны.', 'Исправьте настройки сети
к которому подключен основной блок.', 20);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (50, 6, 'Проверка настроек', 'SMTP/POP3-сервер
настройки неверны.', 'Исправьте протокол в
Настройки сети через
Командный центр', 20);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (51, 1, 'Проверка SMTP/POP3
имя сервера', 'SMTP/POP3 сервер
имя неверно.', 'Исправить SMTP/POP3
имя сервера в [Настройки функций] > [Электронная почта] через центр управления.', 21);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (52, 2, 'Проверка кабеля локальной сети', 'Кабель LAN не подключен к основному блоку.', 'Подсоедините кабель локальной сети к
основной блок.', 21);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (53, 3, 'Проверка SMTP/POP3
порт №', 'Неверный номер порта.', 'Исправьте порт SMTP/POP3
число', 21);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (54, 4, 'Проверка настроек', 'Настройки сети
неправильно.', 'Исправьте настройки в
Настройки сети через
Командный центр.', 21);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (55, 5, 'Проверка настроек', 'Сетевые настройки, которые
основной блок подключен
неверны.', 'Исправьте настройки сети
к которому подключен основной блок.', 21);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (56, 1, 'Проверка SMTP/POP3
имя сервера', 'SMTP/POP3 сервер
имя неверно.', 'Исправить SMTP/POP3
имя сервера в [Настройки функций] > [Электронная почта] через центр управления', 22);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (57, 2, 'Проверка SMTP/POP3
порт №', 'Неверный номер порта.', 'Исправьте порт SMTP/POP3
число.', 22);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (58, 3, 'Проверка настроек', 'Настройки сети
неправильно.', 'Исправьте настройки в
Настройки сети через
Командный центр.', 22);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (59, 4, 'Проверка настроек', 'Сетевые настройки, которые
основной блок подключен
неверны.', 'Исправьте настройки сети
к которому подключен основной блок.', 22);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (60, 5, 'Проверка настроек', 'SMTP/POP3-сервер
настройки неверны.', 'Исправьте протокол в
Настройки сети через
Командный центр.', 22);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (61, 1, 'Проверка настроек', 'Неправильные сетевые настройки.', 'Исправьте настройки в
Настройки сети через
Командный центр.', 23);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (62, 2, 'Проверка SMTP/POP3
порт №', 'Сетевые настройки, которые
основной блок подключен
неверны.', 'Исправьте настройки сети
к которому подключен основной блок.', 23);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (63, 1, 'Проверка настроек', 'Неправильные сетевые настройки.', 'Исправьте настройки в
Настройки сети через
Командный центр.', 24);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (64, 2, 'Проверка SMTP/POP3
порт №', 'Сетевые настройки, которые
основной блок подключен
неверны.', 'Исправьте настройки сети
к которому подключен основной блок.', 24);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (65, 1, 'Проверка настроек', 'Неверные настройки сети.', 'Исправьте настройки в
Настройки сети через
Командный центр.', 25);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (66, 1, 'Проверка настроек', 'Неверные настройки сети.', 'Исправьте настройки в
Настройки сети через
Командный центр.', 26);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (67, 2, 'Проверка настроек', 'Неверные настройки сети.', 'Исправьте настройки в
Настройки сети через
Командный центр.', 26);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (68, 3, 'Проверка настроек', 'SMTP/POP3-сервер
настройки неверны.', 'Исправьте протокол в
Настройки сети через
Командный центр.', 26);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (69, 1, 'Проверка настроек', 'Настройки SMTP-сервера
неверны.', 'Установите правильный SMTP
Протокол аутентификации на
[Настройки функций] > [Электронная почта]
через командный центр', 27);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (70, 1, 'Проверка самоподписанного
сертификат', 'Самоподписанный сертификат
устройства неверно.', 'Исправьте сертификаты в
Настройки безопасности через
Командный центр', 28);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (71, 2, 'Проверка настроек', 'Настройки сертификата службы неверны.', 'Исправьте сертификаты в
Настройки безопасности через
Командный центр', 28);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (72, 3, 'Проверка настроек', 'Настройки SMTP/POP3
неверны.', 'Исправьте протокол в
Настройки сети через
Командный центр', 28);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (73, 1, 'Checking the FTP host
name', 'The FTP host name is
incorrect.', 'Correct the FTP host name
via the Command Center.', 29);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (74, 2, 'Checking the settings', 'The network settings are incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 29);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (75, 3, 'Checking the settings', 'The network settings that the main unit is connected to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 29);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (76, 1, 'Checking the FTP host
name', 'The user name or the
password is incorrect.', 'Correct the user name and
the password.', 30);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (77, 2, 'Checking the FTP server', 'FTP server is improper.', 'Correct the protocol in the
Network Settings via the
Command Center.', 30);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (78, 1, 'Checking the settings', 'FTP protocol is not
enabled.', 'Correct the protocol in the
Network Settings via the
Command Center.', 31);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (79, 1, 'Checking the settings', 'The security settings of the
device are incorrect.', 'Correct the settings in the
Security Settings via the
Command Center.', 63);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (80, 1, 'Checking the settings', 'The security settings of the
device are incorrect.', 'Correct the settings in the
Security Settings via the
Command Center.Command Center.', 64);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (81, 2, 'Checking the settings', 'The FTP server settings
are incorrect.', 'Correct the protocol in the
Network Settings via the
Command Center.', 64);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (82, 1, 'Checking the FTP host
name', 'The FTP host name is
incorrect.', 'Correct the FTP host name
via the Command Center.', 32);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (83, 2, 'Checking the LAN cable', 'The LAN cable is not connected to the main unit.', 'Connect the LAN cable to the
main unit.', 32);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (84, 3, 'Checking the FTP port
number', 'The port number is incorrect.', 'Correct the FTP port number.', 32);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (85, 4, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 32);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (86, 5, 'Checking the settings', 'The FTP server settings
are incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 32);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (87, 6, 'Checking the settings', 'The SMTP/POP3 server
settings are incorrect.', 'Correct the protocol in the
Network Settings via the
Command Center', 32);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (88, 1, 'Checking the FTP host
name', 'The FTP host name is
incorrect.', 'Correct the FTP host name ', 33);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (89, 2, 'Checking the FTP port
number', 'The port number is incorrect.', 'Correct the FTP port number', 33);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (90, 3, 'Checking the settings ', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 33);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (91, 4, 'Checking the settings', 'The network settings that
the main unit is connected
to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 33);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (92, 5, 'Checking the settings', 'The FTP server settings
are incorrect.', 'Correct the protocol in the
Network Settings via the
Command Center.', 33);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (93, 1, 'Checking the FTP host
name', 'The FTP host name is
incorrect.', 'Correct the FTP host name
via the Command Center.', 34);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (94, 2, 'Checking the FTP port
number', 'The port number is incorrect', 'Correct the FTP port number.', 34);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (95, 3, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center', 34);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (96, 4, 'Checking the settings', 'The network settings that
the main unit is connected
to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 34);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (97, 5, 'Checking the settings', 'The FTP server settings
are incorrect.', 'Correct the protocol in the
Network Settings via the
Command Center.', 34);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (98, 1, 'Checking the settings', 'The network settings are incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 35);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (99, 2, 'Checking the SMTP/POP3
port No.', 'The network settings that
the main unit is connected
to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 35);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (100, 3, 'Checking the destination
folder name', 'The destination folder
name is incorrect.', 'Set the correct destination
folder', 35);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (101, 4, 'Checking the settings', 'The FTP server settings
are incorrect.', 'Correct the protocol in the
Network Settings via the
Command Center.', 35);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (102, 1, 'Checking the settings', 'The network settings are incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 36);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (103, 2, 'Checking the settings', 'The network settings that
the main unit is connected
to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 36);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (104, 1, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 37);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (105, 1, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 57);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (106, 2, 'Checking the settings', 'The network settings that
the main unit is connected
to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 57);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (107, 1, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 65);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (108, 2, 'Checking the settings', 'The network settings that
the main unit is connected
to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 65);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (109, 1, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 69);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (110, 2, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 69);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (111, 3, 'Checking the settings', 'The FTP server settings
are incorrect.', 'Correct the protocol in the
Network Settings via the
Command Center.', 69);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (112, 1, 'Проверка имени FTP-хоста', 'Некорректное имя FTP-хоста.', 'Исправьте имя FTP-хоста через "Командный центр".', 38);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (113, 2, 'Проверка настроек', 'Некорректные сетевые настройки.', 'Исправьте настройки в "Сетевых настройках" через "Командный центр".', 38);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (114, 3, 'Проверка настроек', 'Некорректные сетевые настройки, к которым подключено основное устройство.', 'Исправьте сетевые настройки, к которым подключено основное устройство.', 38);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (115, 1, 'Проверка имени пользователя или пароля', 'Некорректное имя пользователя или пароль.', 'Исправьте имя пользователя и пароль.', 39);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (116, 2, 'Проверка FTP-сервера', 'Некорректный FTP-сервер.', 'Исправьте протокол в "Сетевых настройках" через "Командный центр".', 39);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (117, 1, 'Проверка настроек', 'FTP-протокол не включен.', 'Исправьте протокол в "Сетевых настройках" через "Командный центр".', 40);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (118, 1, 'Проверка настроек', 'Некорректные настройки безопасности устройства.', 'Исправьте настройки в "Настройках безопасности" через "Командный центр".', 66);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (119, 1, 'Проверка настроек', 'Некорректные настройки безопасности устройства.', 'Исправьте настройки в "Настройках безопасности" через "Командный центр".', 67);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (120, 2, 'Проверка настроек', 'Некорректные настройки FTP-сервера.', 'Исправьте протокол в "Сетевых настройках" через "Командный центр".', 67);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (121, 1, 'Проверка имени FTP-хоста', 'Некорректное имя FTP-хоста.', 'Исправьте имя FTP-хоста через "Командный центр".', 41);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (122, 2, 'Проверка LAN-кабеля', 'LAN-кабель не подключен к основному устройству.', 'Подключите LAN-кабель к основному устройству.', 41);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (123, 3, 'Проверка номера порта FTP', 'Некорректный номер порта.', 'Исправьте номер порта FTP.', 41);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (124, 4, 'Проверка настроек', 'Некорректные сетевые настройки.', 'Исправьте настройки в "Сетевых настройках" через "Командный центр".', 41);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (125, 5, 'Проверка настроек', 'Некорректные настройки FTP-сервера.', 'Исправьте настройки в "Сетевых настройках" через "Командный центр".', 41);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (126, 6, 'Проверка настроек', 'Некорректные настройки SMTP/POP3-сервера.', 'Исправьте протокол в "Сетевых настройках" через "Командный центр".', 41);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (127, 1, 'Проверка имени FTP-хоста', 'Некорректное имя FTP-хоста.', 'Исправьте имя FTP-хоста через "Командный центр".', 42);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (128, 2, 'Проверка номера порта FTP', 'Некорректный номер порта.', 'Исправьте номер порта FTP.', 42);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (129, 3, 'Проверка настроек', 'Некорректные сетевые настройки.', 'Исправьте настройки в "Сетевых настройках" через "Командный центр".', 42);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (130, 4, 'Проверка настроек', 'Некорректные сетевые настройки, к которым подключено основное устройство.', 'Исправьте сетевые настройки, к которым подключено основное устройство.', 42);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (131, 5, 'Проверка настроек', 'Некорректные настройки FTP-сервера.', 'Исправьте протокол в "Сетевых настройках" через "Командный центр".', 42);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (132, 1, 'Проверка настроек', 'Некорректные сетевые настройки.', 'Исправьте настройки в "Сетевых настройках" через "Командный центр".', 44);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (133, 2, 'Проверка номера порта SMTP/POP3', 'Некорректные сетевые настройки, к которым подключено основное устройство.', 'Исправьте сетевые настройки, к которым подключено основное устройство.', 44);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (134, 3, 'Проверка имени папки назначения', 'Некорректное имя папки назначения.', 'Установите правильную папку назначения.', 44);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (135, 4, 'Проверка настроек', 'Некорректные настройки FTP-сервера.', 'Исправьте протокол в "Сетевых настройках" через "Командный центр".', 44);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (136, 1, 'Проверка настроек', 'Некорректные сетевые настройки.', 'Исправьте настройки в "Сетевых настройках" через "Командный центр".', 45);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (137, 2, 'Проверка настроек', 'Некорректные сетевые настройки, к которым подключено основное устройство.', 'Исправьте сетевые настройки, к которым подключено основное устройство.', 45);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (138, 1, 'Проверка настроек', 'Некорректные сетевые настройки.', 'Исправьте настройки в "Сетевых настройках" через "Командный центр".', 46);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (143, 1, 'Проверка настроек', 'Настройки сети неверные.', 'Исправьте настройки в разделе "Настройки сети" через Центр управления.', 59);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (144, 2, 'Проверка настроек', 'Неверные настройки сети, к которым подключена основная единица.', 'Исправьте настройки сети, к которым подключена основная единица.', 59);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (145, 1, 'Проверка настроек', 'Настройки сети неверные.', 'Исправьте настройки в разделе "Настройки сети" через Центр управления.', 68);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (146, 2, 'Проверка настроек', 'Неверные настройки сети, к которым подключена основная единица.', 'Исправьте настройки сети, к которым подключена основная единица.', 68);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (147, 1, 'Проверка настроек', 'Настройки сети неверные.', 'Исправьте настройки в разделе "Настройки сети" через Центр управления.', 70);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (148, 2, 'Проверка настроек', 'Настройки сети неверные.', 'Исправьте настройки в разделе "Настройки сети" через Центр управления.', 70);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (149, 3, 'Проверка настроек', 'Неверные настройки FTP-сервера.', 'Исправьте протокол в разделе "Настройки сети" через Центр управления.', 70);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (150, 1, 'Checking the destination
host name', 'The destination host name
is incorrect.', 'Correct the destination host
name.', 47);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (151, 2, 'Checking the settings', 'The network settings are incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 47);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (152, 3, 'Checking the settings', 'The network settings that the main unit is connected to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 47);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (153, 1, 'Checking the user name
and the password', 'The user name or the
password is incorrect.', 'Correct the user name and
the password.', 48);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (154, 2, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 48);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (155, 3, 'Checking the settings', 'The sharing settings of the
destination host / folder are
incorrect.', 'Correct the sharing settings
of the destination host /
folder.', 48);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (156, 1, 'Checking the host name,
destination folder name
and the file name', 'The host name, destination folder name, or the file
name contains the invalid
character', 'Revise invalid characters in
destination host name, destination folder name and file
name properly.', 61);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (157, 2, 'Checking the destination
folder name and the file
name', 'The destination folder
name or the file name is
incorrect.', 'Revise the destination folder
and file name according to
the naming rules.', 61);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (158, 3, 'Checking the destination
host and the destination
folder', 'The destination host name
or the destination folder
name is incorrect.', 'Revise the destination host
and destination folder properly.', 61);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (159, 1, 'Checking the settings', 'The settings of the SMP
protocol are incorrect.', 'Correct the protocol in the
Network Settings via the
Command Center.', 49);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (160, 1, 'Checking the destination
host name', 'The destination host name
is incorrect.', 'Correct the destination host
name.', 50);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (161, 2, 'Checking the LAN cable', 'The LAN cable is not connected to the main unit in
the transmission (Scan to
SMB).', 'Connect the LAN cable to the
main unit.', 50);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (162, 3, 'Checking the SMB port
No.', 'The port number is incorrect.', 'Correct the SMB port number.', 50);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (163, 4, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center.', 50);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (164, 5, 'Checking the settings', 'The network settings that
the main unit is connected
to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 50);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (165, 1, 'Checking the scanning file
name', 'The sending file name is
incorrect.', 'Correct the scanning file
name.', 51);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (166, 2, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center', 51);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (167, 3, 'Checking the settings', 'The network settings that
the main unit is connected
to are incorrect', 'Correct the network settings
that the main unit is connected to.', 51);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (168, 1, 'Checking the settings', 'The network settings are
incorrect.', 'Correct the settings in the
Network Settings via the
Command Center', 58);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (169, 2, 'Checking the settings', 'The network settings that
the main unit is connected
to are incorrect.', 'Correct the network settings
that the main unit is connected to.', 58);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (170, 3, 'Checking the LAN cable', 'The LAN cable is not connected to the main unit in
the transmission (Scan to
SMB).', 'Connect the LAN cable to the
main unit.', 58);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (171, 1, 'Проверка имени целевого хоста', 'Некорректное имя целевого хоста.', 'Исправьте имя целевого хоста.', 52);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (172, 2, 'Проверка настроек', 'Некорректные сетевые настройки.', 'Исправьте настройки в разделе "Network Settings" через "Command Center".', 52);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (173, 3, 'Проверка настроек', 'Некорректные сетевые настройки, к которым подключена основная единица.', 'Исправьте сетевые настройки, к которым подключена основная единица.', 52);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (174, 1, 'Проверка имени пользователя и пароля', 'Некорректное имя пользователя или пароль.', 'Исправьте имя пользователя и пароль.', 53);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (175, 2, 'Проверка настроек', 'Некорректные сетевые настройки.', 'Исправьте настройки в разделе "Network Settings" через "Command Center".', 53);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (176, 3, 'Проверка настроек', 'Некорректные настройки общего доступа целевого хоста/папки.', 'Исправьте настройки общего доступа целевого хоста/папки.', 53);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (177, 1, 'Проверка имени хоста, имени целевой папки и имени файла', 'Имя хоста, имя целевой папки или имя файла содержит недопустимый символ.', 'Исправьте недопустимые символы в имени хоста, имени целевой папки и имени файла.', 62);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (178, 2, 'Проверка имени целевой папки и имени файла', 'Некорректное имя целевой папки или имя файла.', 'Исправьте имя целевой папки и имя файла в соответствии с правилами именования.', 62);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (179, 3, 'Проверка целевого хоста и целевой папки', 'Некорректное имя целевого хоста или целевой папки.', 'Исправьте целевой хост и целевую папку правильно.', 62);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (180, 1, 'Проверка настроек', 'Некорректные настройки протокола SMP.', 'Исправьте протокол в разделе "Network Settings" через "Command Center".', 54);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (181, 1, 'Проверка имени целевого хоста', 'Некорректное имя целевого хоста.', 'Исправьте имя целевого хоста.', 55);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (182, 2, 'Проверка LAN-кабеля', 'LAN-кабель не подключен к основной единице в режиме передачи (Сканирование в SMB).', 'Подключите LAN-кабель к основной единице.', 55);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (183, 3, 'Проверка номера порта SMB', 'Номер порта некорректен.', 'Исправьте номер порта SMB.', 55);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (184, 4, 'Проверка настроек', 'Некорректные сетевые настройки.', 'Исправьте настройки в разделе "Network Settings" через "Command Center".', 55);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (185, 5, 'Проверка настроек', 'Некорректные настройки, к которым подключена основная единица.', 'Исправьте сетевые настройки, к которым подключена основная единица.', 55);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (186, 1, 'Проверка имени файла сканирования', 'Некорректное имя отправляемого файла.', 'Исправьте имя файла сканирования.', 56);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (187, 2, 'Проверка настроек', 'Некорректные сетевые настройки.', 'Исправьте настройки в разделе "Network Settings" через "Command Center".', 56);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (188, 3, 'Проверка настроек', 'Некорректные настройки, к которым подключена основная единица.', 'Исправьте сетевые настройки, к которым подключена основная единица.', 56);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (189, 1, 'Проверка настроек', 'Некорректные сетевые настройки.', 'Исправьте настройки в разделе "Network Settings" через "Command Center".', 60);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (190, 2, 'Проверка настроек', 'Некорректные настройки, к которым подключена основная единица.', 'Исправьте сетевые настройки, к которым подключена основная единица.', 60);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (191, 3, 'Проверка LAN-кабеля', 'LAN-кабель не подключен к основной единице в режиме передачи (Сканирование в SMB).', 'Подключите LAN-кабель к основной единице.', 60);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (192, 1, 'Checking the paper path ', 'The paper is caught with a
piece of paper, etc', 'Remove paper strip or foreign objects adhering on the
conveying path, or burrs on
the parts such as guide, actuator, etc. ', 71);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (193, 2, 'Cleaning the sensor', 'The sensor is dirty', 'Clean the conveying related
sensor.', 71);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (194, 3, 'Checking the connection', 'The sensor connector is
not connected properly', 'Reinsert the connector of the
conveying related sensor.', 71);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (195, 4, 'Replacing the sensor', 'The sensor is faulty.', 'Replace the conveying
related sensor.', 71);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (196, 1, 'Resetting the main power', 'The controller does not
activate properly.', 'Turn off the power switch and
pull out the power plug. After
passing 5s, reinsert the
power plug and turn on the
power switch.', 72);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (197, 2, 'Firmware upgrade', 'The firmware does not
properly activate.', 'Upgrade the firmware to the
latest version.', 72);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (198, 1, 'Resetting the main power', 'The controller does not
activate properly.', 'Turn off the power switch and
pull out the power plug. After
passing 5s, reinsert the
power plug and turn on the
power switch.', 73);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (199, 2, 'Firmware upgrade', 'The firmware does not
properly activate.', 'Upgrade the firmware to the
latest version.', 73);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (200, 1, 'Resetting the main power', 'The controller does not
activate properly.', 'Turn off the power switch and
pull out the power plug. After
passing 5s, reinsert the
power plug and turn on the
power switch.', 74);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (201, 2, 'Firmware upgrade', 'The firmware does not
properly activate.', 'Upgrade the firmware to the
latest version.', 74);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (202, 1, 'Resetting the main power', 'The controller does not
activate properly.', 'Turn off the power switch and
pull out the power plug. After
passing 5s, reinsert the
power plug and turn on the
power switch.', 75);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (203, 2, 'Firmware upgrade', 'The firmware does not
properly activate.', 'Upgrade the firmware to the
latest version.', 75);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (204, 1, 'Resetting the main power', 'The controller does not
activate properly.', 'Turn off the power switch and
pull out the power plug. After
passing 5s, reinsert the
power plug and turn on the
power switch.', 76);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (205, 2, 'Firmware upgrade', 'The firmware does not
properly activate.', 'Upgrade the firmware to the
latest version.', 76);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (206, 1, 'Resetting the main power', 'The controller does not
activate properly.', 'Turn off the power switch and
pull out the power plug. After
passing 5s, reinsert the
power plug and turn on the
power switch.', 77);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (207, 2, 'Firmware upgrade', 'The firmware does not
properly activate.', 'Upgrade the firmware to the
latest version.', 77);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (208, 1, 'Resetting the main power', 'The controller does not
activate properly.', 'Turn off the power switch and
pull out the power plug. After
passing 5s, reinsert the
power plug and turn on the
power switch.', 78);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (209, 2, 'Firmware upgrade', 'The firmware does not
properly activate.', 'Upgrade the firmware to the
latest version.', 78);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (210, 1, 'Проверка пути бумаги', 'Бумага застряла с другим листом бумаги и т. д.', 'Удалите полосу бумаги или посторонние предметы, прикрепленные к пути передачи или удалите зазубрины на таких частях, как направляющая, актуатор и т. д.', 79);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (211, 2, 'Очистка сенсора', 'Сенсор загрязнен', 'Очистите связанный с передачей сенсор.', 79);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (212, 3, 'Проверка соединения', 'Разъем сенсора неправильно подключен', 'Передвиньте разъем связанного с передачей сенсора.', 79);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (213, 4, 'Замена сенсора', 'Сенсор неисправен', 'Замените связанный с передачей сенсор.', 79);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (214, 1, 'Сброс основного питания', 'Контроллер не активируется должным образом', 'Выключите выключатель питания и выньте штепсельный разъем. После 5 секунд вставьте штепсельный разъем обратно и включите выключатель питания.', 80);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (215, 2, 'Обновление прошивки', 'Прошивка не активируется должным образом', 'Обновите прошивку до последней версии.', 80);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (216, 1, 'Сброс основного питания', 'Контроллер не активируется должным образом', 'Выключите выключатель питания и выньте штепсельный разъем. После 5 секунд вставьте штепсельный разъем обратно и включите выключатель питания.', 81);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (217, 2, 'Обновление прошивки', 'Прошивка не активируется должным образом', 'Обновите прошивку до последней версии.', 81);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (218, 1, 'Сброс основного питания', 'Контроллер не активируется должным образом', 'Выключите выключатель питания и выньте штепсельный разъем. После 5 секунд вставьте штепсельный разъем обратно и включите выключатель питания.', 82);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (219, 2, 'Обновление прошивки', 'Прошивка не активируется должным образом', 'Обновите прошивку до последней версии.', 82);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (220, 1, 'Сброс основного питания', 'Контроллер не активируется должным образом', 'Выключите выключатель питания и выньте штепсельный разъем. После 5 секунд вставьте штепсельный разъем обратно и включите выключатель питания.', 83);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (221, 2, 'Обновление прошивки', 'Прошивка не активируется должным образом', 'Обновите прошивку до последней версии.', 83);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (222, 1, 'Сброс основного питания', 'Контроллер не активируется должным образом', 'Выключите выключатель питания и выньте штепсельный разъем. После 5 секунд вставьте штепсельный разъем обратно и включите выключатель питания.', 84);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (223, 2, 'Обновление прошивки', 'Прошивка не активируется должным образом', 'Обновите прошивку до последней версии.', 84);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (224, 1, 'Сброс основного питания', 'Контроллер не активируется должным образом', 'Выключите выключатель питания и выньте штепсельный разъем. После 5 секунд вставьте штепсельный разъем обратно и включите выключатель питания.', 85);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (225, 2, 'Обновление прошивки', 'Прошивка не активируется должным образом', 'Обновите прошивку до последней версии.', 85);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (226, 1, 'Сброс основного питания', 'Контроллер не активируется должным образом', 'Выключите выключатель питания и выньте штепсельный разъем. После 5 секунд вставьте штепсельный разъем обратно и включите выключатель питания.', 86);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (227, 2, 'Обновление прошивки', 'Прошивка не активируется должным образом', 'Обновите прошивку до последней версии.', 86);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (228, 1, 'Re-loading paper', 'The cut-end of the paper is
crushed.', 'Fan the paper well and load it
by reversing the paper direction', 87);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (229, 2, 'Checking the paper', 'The paper leading edge is
bent.', 'Remove the bent paper.', 87);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (230, 3, 'Checking the paper', 'The paper is curled downward or wavy.', 'Correct or replace paper. If
you cannot get user agreement about the paper
replacement, relocate the
leading end of paper and the
trailing end or reload paper
upside down.', 87);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (231, 4, 'Checking the paper', 'Unspecified papers are
used.', 'Explain to the user to use the
paper within the specifications.', 87);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (232, 5, 'Checking the paper', 'Foreign objects are on the
paper.', 'Remove the paper with foreign objects.', 87);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (233, 1, 'Checking the connection', 'The connector or FFC is
not connected properly. Or,
the wire or FFC is faulty', 'Reconnect the following wire
connectors and clean the
FFC and reconnect. If there is
no continuity, replace the
wire. If the FFC terminal section is deformed or FFC is
broken, replace the FFC.
 Lift motor - Engine relay
PWB
 Engine relay PWB - Main/
engine PWB', 88);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (234, 2, 'Checking the driving parts', 'The lift motor drive is not
transmitted to the lift plate
drive parts because of the
engagement failure.', 'If there are any problems
such as breakage or biting of
foreign objects in the joints of
the gears, couplings etc. of
the motor, clean or replace
them.', 88);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (235, 3, 'Checking the lift motor', 'The lift motor is not properly attached, or it is faulty', 'Reattach the lift motor. If it is
not repaired, replace it', 88);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (236, 4, 'Replacing the lift plate', 'The lift plate is damaged or
deformed.', 'Replace the lift plate.', 88);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (237, 5, 'Replacing the engine relay
PWB', 'The engine relay PWB is
faulty.', 'Replace the engine relay
PWB.', 88);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (238, 6, 'Firmware upgrade', 'The firmware is faulty', 'Upgrade the engine firmware
to the latest version', 88);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (239, 7, 'Replacing the main/engine
PWB', 'The main/engine PWB is
faulty.', 'Replace the main/engine
PWB.', 88);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (240, 1, 'Checking the connection', 'The connector or FFC is
not connected properly. Or,
the wire or FFC is faulty.', 'Reconnect the following wire
connectors and clean the
FFC and reconnect. If there is
no continuity, replace the
wire. If the FFC terminal section is deformed or FFC is
broken, replace the FFC.
 Feed clutch - Engine relay
PWB
 Conveying developer motor
- Engine relay PWB Engine relay PWB - Main/
engine PWB', 89);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (241, 2, 'Checking the paper feed
shaft and the pin', 'Feed roller does not rotate
as feed shaft and feed pin
of the feed roller is not
attach properly.', 'Reattach the feed shaft and
feed pin. If there is deformation, etc., replace them.', 89);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (242, 3, 'Checking the paper feed
clutch', 'The paper feed clutch is
not connected, so the
paper feed roller does not
rotate.', 'Reattach the feed clutch. If it
is not repaired, replace it', 89);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (243, 4, 'Removing the foreign
objects and checking the
operation of the actuator', 'The lift sensor is on but the
lift plate does not go up to
the upper limit position.', 'Remove the piece of paper or
the foreign objects. And,
check the actuator of the lift
sensor turns on by rising the
lift plate. Reattach the actuator if necessary', 89);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (244, 5, 'Checking the drive gear', 'The drive from the conveying developer motor is not
transmitted.', 'Replace the faulty drive parts
in the conveying drive unit
such as a gear.', 89);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (245, 6, 'Checking the conveying
developer motor', 'The conveying developer
motor is not driven and
feed roller does not rotate', 'Reattach the conveying
developer motor. If it is not
repaired, replace it', 89);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (246, 7, 'Replacing the engine relay
PWB', 'The engine relay PWB is
faulty', 'Replace the engine relay
PWB.', 89);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (247, 8, 'Firmware upgrade', ' The firmware is faulty.', 'Upgrade the engine firmware
to the latest version', 89);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (248, 9, 'Replacing the main/engine
PWB', 'The main/engine PWB is
faulty', 'Replace the main/engine
PWB.', 89);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (249, 1, ' Checking the paper path', ' The paper is caught with a
piece of paper, etc.', 'Remove paper strip or foreign objects adhering on the
conveying path, or burrs on
the parts such as guide, actuator, etc.', 90);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (250, 2, 'Checking the paper feed
roller', 'The conveying function of
the paper feed roller is not
enough.', 'Clean the paper feed roller
surface. If worn down,
replace it.', 90);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (251, 3, 'Checking the connection', 'The connector or FFC is
not connected properly. Or,
the wire or FFC is faulty.', 'Reconnect the following wire
connectors and clean the
FFC and reconnect. If there is
no continuity, replace the
wire. If the FFC terminal section is deformed or FFC is
broken, replace the FFC.
 Feed clutch - Engine relay
PWB
 Engine relay PWB - Main/
engine PWB', 90);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (252, 4, ' Checking the paper feed
clutch', 'The paper feed clutch is
not connected, so the
paper feed roller does not
rotate', 'Reattach the feed clutch and
reinsert the connector. If it is
not repaired, replace it.', 90);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (253, 5, ' Replacing the engine relay
PWB', 'The engine relay PWB is
faulty.', 'Replace the engine relay
PWB.', 90);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (254, 6, 'Firmware upgrade', 'The firmware is faulty.', 'Upgrade the engine firmware
to the latest version', 90);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (255, 7, 'Replacing the main/engine
PWB', 'The main/engine PWB is
faulty.', 'Replace the main/engine
PWB.', 90);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (256, 1, 'Checking the paper feed
roller', 'The conveying function of
the paper feed roller is not
enough.', 'Clean the paper feed roller
surface. If worn down,
replace it.', 91);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (257, 2, '(When the paper skew
occurs) Relocating the
paper width guides', 'The locations of the paper
width guides do not fit with
the paper size.', 'Relocate the paper width
guides to fit them with the
paper size.', 91);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (258, 3, ' (When the paper skew
occurs) Checking the actuator and the spring', 'The actuator does not
operate properly.', 'The actuator or the spring is
deformed. If the actuator
does not properly operate,
replace it.', 91);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (259, 4, '(In case paper skews)
Checking the conveying
guide', 'The paper is caught with
the conveying guide.', 'Reattach the conveying
guide. Remove the burrs on
the conveying guide surface
or replace the conveying
guide if there are burrs on it.', 91);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (260, 5, ' (When the paper skew
occurs) Checking the
paper path', 'The paper is caught with a
piece of paper, etc.', 'Remove paper strip or foreign objects adhering on the
conveying path, or burrs on
the parts such as guide, actuator, etc.', 91);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (261, 6, '(For marks of paper warpage) checking the connection', 'The connector is not properly connected or the wire
is faulty.', 'Clean the terminal of the following wire connectors and
reconnect the connectors. If
there is no continuity, replace
the wire.
 Registration sensor - Main/
engine PWB', 91);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (262, 7, '(When there is a paper
loop mark) Checking the
registration sensor', 'The registration sensor is
not properly attached, or it
is faulty.', 'Reattach the regist sensor. If
it is not repaired, replace it.', 91);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (263, 8, ' Checking the connection', 'The connector or FFC is
not connected properly. Or,
the wire or FFC is faulty', 'Reconnect the following wire
connectors and clean the
FFC and reconnect. If there is
no continuity, replace the
wire. If the FFC terminal section is deformed or FFC is
broken, replace the FFC.
 Middle clutch - Engine relay
PWB
 Engine relay PWB - Main/
engine PWB', 91);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (264, 9, 'Checking the middle clutch', 'The middle roller does not
rotate due to no engagement of the middle clutch.', 'Reattach the middle clutch. If
it is not repaired, replace it.', 91);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (265, 10, 'Replacing the engine relay
PWB', 'The engine relay PWB is
faulty.', 'Replace the engine relay
PWB.', 91);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (266, 11, 'Firmware upgrade', ' The firmware is faulty', 'Upgrade the engine firmware
to the latest version', 91);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (267, 12, ' Replacing the main/engine
PWB', 'The main/engine PWB is
faulty', 'Replace the main/engine
PWB.', 91);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (268, 1, 'Перезагрузка бумаги', 'Конец бумаги смят', 'Хорошо распределите бумагу и загрузите ее, развернув ее направление', 92);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (269, 2, 'Проверка бумаги', 'Передний край бумаги изогнут', 'Удалите изогнутую бумагу', 92);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (270, 3, 'Проверка бумаги', 'Бумага изогнута вниз или волнистая', 'Исправьте или замените бумагу. Если нельзя добиться согласия пользователя на замену бумаги, переместите передний конец и задний конец или загрузите бумагу перевернутой', 92);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (271, 4, 'Проверка бумаги', 'Используются неуказанные типы бумаги', 'Объясните пользователю использовать бумагу, соответствующую спецификациям', 92);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (272, 5, 'Проверка бумаги', 'На бумаге присутствуют посторонние предметы', 'Удалите бумагу с посторонними предметами', 92);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (273, 1, 'Проверка соединения', 'Разъем или FFC неправильно
подключены. Или провод или
FFC неисправны.', 'Переподключите следующие
проводные разъемы и очистите
FFC, а затем подключите их
снова. Если нет непрерывности,
замените провод. Если раздел
терминалов FFC деформирован
или FFC сломан, замените FFC.
 Подъемный мотор - Плата
реле двигателя
 Плата реле двигателя - Плата
основного/двигателя', 93);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (274, 2, 'Проверка приводных частей', 'Привод подъемного мотора
не передается на приводные
части плиты подъема из-за
сбоя в зацеплении.', 'Если есть какие-либо
проблемы, такие как поломка
или застревание посторонних
предметов в соединениях
шестерен, муфт и т.д. мотора,
очистите или замените их.', 93);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (275, 3, 'Проверка подъемного мотора', 'Подъемный мотор неправильно
установлен или неисправен.', 'Переустановите подъемный
мотор. Если он не может быть
отремонтирован, замените его.', 93);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (276, 4, 'Замена плиты подъема', 'Плита подъема повреждена
или деформирована.', 'Замените плиту подъема.', 93);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (277, 5, 'Замена платы реле двигателя', 'Плата реле двигателя
неисправна.', 'Замените плату реле
двигателя.', 93);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (278, 6, 'Обновление прошивки', 'Прошивка неисправна.', 'Обновите прошивку двигателя
до последней версии.', 93);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (279, 7, 'Замена основной/двигательной платы', 'Основная/двигательная плата
неисправна.', 'Замените основную/двигательную
плату.', 93);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (280, 1, 'Проверка соединения', 'Разъем или FFC неправильно подключены. Или провод или FFC повреждены.', 'Переподключите следующие проводные разъемы, очистите FFC и повторно подключите его. Если нет непрерывности, замените провод. Если раздел терминала FFC деформирован или FFC сломан, замените FFC.
- Сцепление подачи - Реле двигателя PWB
- Реле двигателя PWB - Главная/двигатель PWB', 94);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (281, 2, 'Проверка вала и штифта подачи бумаги', 'Ролик подачи не вращается, так как вал и штифт подачи ролика не прикреплены правильно.', 'Переприкрепите вал и штифт подачи. Если есть деформация и т.д., замените их.', 94);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (282, 3, 'Проверка сцепления подачи бумаги', 'Сцепление подачи бумаги не подключено, поэтому ролик подачи бумаги не вращается.', 'Переприкрепите сцепление подачи. Если не устраняется неисправность, замените его', 94);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (283, 4, 'Удаление посторонних объектов и проверка работы приводного механизма', 'Датчик подъема активирован, но плита подъема не поднимается до верхней границы.', 'Удалите бумажный кусок или посторонние объекты. И проверьте, активируется ли привод датчика подъема при подъеме плиты подъема. При необходимости переприкрепите активатор', 94);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (284, 5, 'Проверка приводного механизма', 'Привод от мотора передачи разработанного тонера не передается.', 'Замените неисправные приводные элементы в узле привода передачи, такие как шестерня.', 94);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (285, 6, 'Проверка мотора разработанного тонера', 'Мотор разработанного тонера не работает, и ролик подачи бумаги не вращается', 'Переприкрепите мотор разработанного тонера. Если не устраняется неисправность, замените его', 94);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (286, 7, 'Замена платы реле двигателя', 'Плата реле двигателя неисправна', 'Замените плату реле двигателя.', 94);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (287, 8, 'Обновление прошивки', 'Прошивка неисправна.', 'Обновите прошивку двигателя до последней версии', 94);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (288, 9, 'Замена основной/двигательной платы', 'Основная/двигательная плата неисправна', 'Замените основную/двигательную плату.', 94);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (289, 1, 'Проверка пути бумаги', 'Бумага застряла с бумажным куском и т. д.', 'Удалите бумажную полосу или посторонние объекты, прилипшие на пути подачи бумаги, или задирки на деталях, таких как направляющая, активатор и т. д.', 95);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (290, 2, 'Проверка подачи бумаги ролика', 'Функция подачи бумаги ролика недостаточна.', 'Очистите поверхность подачи бумаги ролика. Если изношена, замените ее.', 95);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (291, 3, 'Проверка соединения', 'Разъем или FFC неправильно подключены. Или провод или FFC повреждены.', 'Переподключите следующие проводные разъемы, очистите FFC и повторно подключите его. Если нет непрерывности, замените провод. Если раздел терминала FFC деформирован или FFC сломан, замените FFC.
- Сцепление подачи - Реле двигателя PWB
- Реле двигателя PWB - Главная/двигательная PWB', 95);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (292, 4, 'Проверка сцепления подачи бумаги', 'Сцепление подачи бумаги не подключено, поэтому ролик подачи бумаги не вращается.', 'Переприкрепите сцепление подачи и вставьте разъем. Если не устраняется неисправность, замените его.', 95);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (293, 5, 'Замена платы реле двигателя', 'Плата реле двигателя неисправна.', 'Замените плату реле двигателя.', 95);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (294, 6, 'Обновление прошивки', 'Прошивка неисправна.', 'Обновите прошивку двигателя до последней версии', 95);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (295, 7, 'Замена основной/двигательной платы', 'Основная/двигательная плата неисправна.', 'Замените основную/двигательную плату.', 95);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (296, 1, 'Проверка подачи бумаги ролика', 'Функция подачи бумаги ролика недостаточна.', 'Очистите поверхность подачи бумаги ролика. Если изношена, замените ее.', 96);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (297, 2, '(При возникновении перекоса бумаги) Перемещение направляющих ширину бумаги', 'Местоположение направляющих ширины бумаги не соответствует размеру бумаги.', 'Переместите направляющие ширину бумаги, чтобы они соответствовали размеру бумаги.', 96);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (298, 3, '(При возникновении перекоса бумаги) Проверка актуатора и пружины', 'Актуатор не функционирует должным образом.', 'Актуатор или пружина деформированы. Если актуатор неправильно функционирует, замените его.', 96);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (299, 4, '(В случае перекоса бумаги) Проверка направляющей', 'Бумага застряла в направляющей.', 'Переприкрепите направляющую. Удалите задирки на поверхности направляющей или замените ее, если на ней есть задирки.', 96);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (300, 5, '(При возникновении перекоса бумаги) Проверка пути бумаги', 'Бумага застряла с бумажным куском и т. д.', 'Удалите бумажную полосу или посторонние объекты, прилипшие на пути подачи бумаги, или задирки на деталях, таких как направляющая, актуатор и т. д.', 96);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (301, 6, '(Для следов деформации бумаги) Проверка соединения', 'Разъем неправильно подключен или провод неисправен.', 'Очистите контактные площадки следующих проводных разъемов и повторно подключите разъемы. Если нет непрерывности, замените провод.
- Датчик регистрации - Главная/двигательная PWB', 96);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (302, 7, '(При наличии следов петли бумаги) Проверка датчика регистрации', 'Датчик регистрации не правильно установлен или он неисправен.', 'Переприкрепите датчик регистрации. Если он не устраняет неисправность, замените его.', 96);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (303, 8, 'Проверка соединения', 'Разъем или FFC неправильно подключены. Или провод или FFC повреждены.', 'Переподключите следующие проводные разъемы, очистите FFC и повторно подключите его. Если нет непрерывности, замените провод. Если раздел терминала FFC деформирован или FFC сломан, замените FFC.
- Сцепление средней части - Главная/двигательная PWB
- Плата реле двигателя - Основная/двигательная PWB', 96);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (304, 9, 'Проверка сцепления средней части', 'Средний ролик не вращается из-за незацепления сцепления средней части.', 'Переприкрепите сцепление средней части. Если он не устраняет неисправность, замените его.', 96);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (305, 10, 'Замена платы реле двигателя', 'Плата реле двигателя неисправна.', 'Замените плату реле двигателя.', 96);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (306, 11, 'Обновление прошивки', 'Прошивка неисправна.', 'Обновите прошивку двигателя до последней версии', 96);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (307, 12, 'Замена основной/двигательной платы', 'Основная/двигательная плата неисправна.', 'Замените основную/двигательную плату.', 96);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (308, 1, 'Reinstalling the firmware', 'The firmware is faulty.', 'Reinstall the firmware.', 97);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (309, 2, 'Checking the connection', 'The connector is not properly connected or the wire
is faulty.', 'Clean the terminal of the following wire connectors and
reconnect the connectors. If
there is no continuity, replace
the wire.
 FAX PWB - Main/engine
PWB', 97);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (310, 3, 'Replacing the FAX PWB', 'The FAX PWB is faulty', 'Replace the FAX PWB.', 97);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (311, 4, 'Main/engine PWB replacement', 'The main/engine PWB is
faulty.', 'Replace the main/engine
PWB.', 97);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (312, 1, 'Checking the FAX PWB', 'The incompatible FAX
PWB is installed.', 'Install the FAX PWB for the
applicable model.', 99);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (313, 2, 'Reinstalling the firmware', 'The firmware is faulty', 'Reinstall the firmware.', 99);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (314, 2, 'Проверка соединения', 'Разъем не правильно подключен или провод
неисправен.', 'Очистите контакты разъема проводов и
переподключите разъемы. Если
нет непрерывности, замените
провод.
 FAX PWB - Основная/двигательная
ПЗУ', 98);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (315, 3, 'Замена FAX PWB', 'FAX PWB неисправна', 'Замените FAX PWB.', 98);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (316, 4, 'Замена основной/двигательной PWB', 'Основная/двигательная PWB
неисправна.', 'Замените основную/двигательную
PWB.', 98);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (317, 1, 'Проверка FAX PWB', 'Установлена несовместимая
FAX PWB.', 'Установите соответствующую FAX PWB для
модели.', 100);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (318, 2, 'Переустановка прошивки', 'Прошивка неисправна', 'Переустановите прошивку.', 100);
INSERT INTO solve(ID, STEP, DESCRIPTION, ASSUMED_CASE, MEASURES, CONDITION_ID) VALUES (319, 1, 'Переустановка прошивки', 'Прошивка повреждена.', 'Повторно установите прошивку.', 98);