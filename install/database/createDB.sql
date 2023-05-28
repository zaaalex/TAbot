CREATE TABLE IF NOT EXISTS language
(
	ID int not null auto_increment,
	NAME varchar(10) not null,
	PRIMARY KEY (ID),
	UNIQUE(NAME)
);

CREATE TABLE IF NOT EXISTS errorType
(
	ID int not null auto_increment,
	NAME varchar(500) not null,
	PRIMARY KEY (ID),
	UNIQUE(NAME)
);

CREATE TABLE IF NOT EXISTS userInfo
(
	ID varchar(500) not null,
	ACTION_INFO varchar(500),
	LANGUAGE_NAME varchar(10),
	PRIMARY KEY (ID),
	FOREIGN KEY FK_LANGUAGE (LANGUAGE_NAME)
		REFERENCES language(NAME)
		ON UPDATE RESTRICT
		ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS product
(
	ID int not null auto_increment,
	NAME varchar(500) not null,
	PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS error
(
	ID int not null auto_increment,
	CODE varchar(500) not null,
	TYPE_NAME varchar(500) not null,
	PRIMARY KEY (ID),
		FOREIGN KEY FK_TYPE_NAME (TYPE_NAME)
		REFERENCES errorType(NAME)
		ON UPDATE RESTRICT
		ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS product_errorJam
(
	PRODUCT_ID int not null,
	ERROR_ID int not null,
	PRIMARY KEY (PRODUCT_ID, ERROR_ID),
	FOREIGN KEY FK_PRODUCT (PRODUCT_ID)
		REFERENCES product(ID)
		ON UPDATE RESTRICT
		ON DELETE RESTRICT,
	FOREIGN KEY FK_ERROR (ERROR_ID)
		REFERENCES error(ID)
		ON UPDATE RESTRICT
		ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS errorCondition
(
	ID int not null auto_increment,
	ERROR_ID int not null,
	NAME varchar(500) not null,
	DESCRIPTION varchar(500) not null,
	LANGUAGE_NAME varchar(10) not null,
	PRIMARY KEY (ID),
	FOREIGN KEY FK_ERROR_ID (ERROR_ID)
		REFERENCES error(ID)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY FK_LANGUAGE (LANGUAGE_NAME)
		REFERENCES language(NAME)
		ON UPDATE RESTRICT
		ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS solve
(
	ID int not null auto_increment,
	CONDITION_ID int not null,
	STEP int not null,
	DESCRIPTION varchar(500) not null,
	ASSUMED_CASE varchar(500) not null,
	MEASURES varchar(5000) not null,
	PRIMARY KEY (ID),
	FOREIGN KEY FK_CONDITION (CONDITION_ID)
		REFERENCES errorCondition(ID)
		ON UPDATE RESTRICT
		ON DELETE RESTRICT
);