--------------------------------------------------------
--  File created - понедельник-сентября-21-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ВОДИТЕЛЬ
--------------------------------------------------------

  CREATE TABLE "PROSHCHENKOV"."ВОДИТЕЛЬ" 
   (	"ТАБ_НОМЕР" VARCHAR2(20 BYTE), 
	"ФАМИЛИЯ" VARCHAR2(60 BYTE), 
	"ИМЯ" VARCHAR2(60 BYTE), 
	"ОТЧЕСТВО" VARCHAR2(60 BYTE), 
	"ВУ" NUMBER(10,0), 
	"ПАСПОРТ" NUMBER(10,0), 
	"ТРАНСПОРТ" VARCHAR2(18 BYTE), 
	"КАТЕГОРИЯ_B" VARCHAR2(2 BYTE), 
	"КАТЕГОРИЯ_C" VARCHAR2(2 BYTE), 
	"КАТЕГОРИЯ_C1" VARCHAR2(2 BYTE), 
	"ТЕЛЕФОН" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ГРУЗ
--------------------------------------------------------

  CREATE TABLE "PROSHCHENKOV"."ГРУЗ" 
   (	"ID" NUMBER, 
	"ДОГОВОР" NUMBER(30,0), 
	"НАЗВАНИЕ" VARCHAR2(60 BYTE), 
	"КОЛ_ВО" NUMBER(10,0), 
	"ID_ЕД_ИЗМ" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ДОГОВОР
--------------------------------------------------------

  CREATE TABLE "PROSHCHENKOV"."ДОГОВОР" 
   (	"НОМЕР" NUMBER, 
	"МЕНЕДЖЕР" VARCHAR2(20 BYTE), 
	"ВОДИТЕЛЬ" VARCHAR2(20 BYTE), 
	"ЗАКАЗЧИК" NUMBER(10,0), 
	"ТРАНСПОРТ" VARCHAR2(18 BYTE), 
	"ДАТА" DATE, 
	"СТОИМОСТЬ" NUMBER(10,0), 
	"ДАТА_ОТПРАВКИ" DATE, 
	"ДАТА_ДОСТАВКИ" DATE, 
	"АДРЕС_ОТПРАВКИ" VARCHAR2(100 BYTE), 
	"АДРЕС_ДОСТАВКИ" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ДОЛЖНОСТЬ
--------------------------------------------------------

  CREATE TABLE "PROSHCHENKOV"."ДОЛЖНОСТЬ" 
   (	"ID" NUMBER(30,0), 
	"НАЗВАНИЕ" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ЕД_ИЗМЕРЕНИЯ
--------------------------------------------------------

  CREATE TABLE "PROSHCHENKOV"."ЕД_ИЗМЕРЕНИЯ" 
   (	"ID" NUMBER(10,0), 
	"НАЗВАНИЕ" VARCHAR2(4 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ЗАКАЗЧИК
--------------------------------------------------------

  CREATE TABLE "PROSHCHENKOV"."ЗАКАЗЧИК" 
   (	"ПАСПОРТ" NUMBER(10,0), 
	"ФАМИЛИЯ" VARCHAR2(60 BYTE), 
	"ИМЯ" VARCHAR2(60 BYTE), 
	"ОТЧЕСТВО" VARCHAR2(60 BYTE), 
	"ТЕЛЕФОН" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ЗАПЧАСТЬ
--------------------------------------------------------

  CREATE TABLE "PROSHCHENKOV"."ЗАПЧАСТЬ" 
   (	"ID" NUMBER(10,0), 
	"НАЗВАНИЕ" VARCHAR2(100 BYTE), 
	"СТОИМОСТЬ" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table КАТЕГОРИЯ
--------------------------------------------------------

  CREATE TABLE "PROSHCHENKOV"."КАТЕГОРИЯ" 
   (	"НАЗВАНИЕ" VARCHAR2(2 BYTE), 
	"ОПИСАНИЕ" VARCHAR2(1500 BYTE), 
	"МИН_МАССА" NUMBER(10,0), 
	"МАКС_МАССА" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table МЕНЕДЖЕР
--------------------------------------------------------

  CREATE TABLE "PROSHCHENKOV"."МЕНЕДЖЕР" 
   (	"ТАБ_НОМЕР" VARCHAR2(20 BYTE), 
	"ФАМИЛИЯ" VARCHAR2(60 BYTE), 
	"ИМЯ" VARCHAR2(60 BYTE), 
	"ОТЧЕСТВО" VARCHAR2(60 BYTE), 
	"ПАСПОРТ" NUMBER(10,0), 
	"ТЕЛЕФОН" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ОБСЛ_ПЕРСОНАЛ
--------------------------------------------------------

  CREATE TABLE "PROSHCHENKOV"."ОБСЛ_ПЕРСОНАЛ" 
   (	"ТАБ_НОМЕР" VARCHAR2(20 BYTE), 
	"ФАМИЛИЯ" VARCHAR2(60 BYTE), 
	"ИМЯ" VARCHAR2(60 BYTE), 
	"ОТЧЕСТВО" VARCHAR2(60 BYTE), 
	"ПАСПОРТ" NUMBER(10,0), 
	"ID_ДОЛЖНОСТИ" NUMBER(10,0), 
	"ТЕЛЕФОН" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table РЕМОНТ
--------------------------------------------------------

  CREATE TABLE "PROSHCHENKOV"."РЕМОНТ" 
   (	"ID" NUMBER(10,0), 
	"ТРАНСПОРТ" VARCHAR2(18 BYTE), 
	"ЗАПЧАСТЬ" NUMBER(10,0), 
	"ОБСЛ_ПЕРСОНАЛ" VARCHAR2(20 BYTE), 
	"ДАТА" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ТРАНСПОРТ
--------------------------------------------------------

  CREATE TABLE "PROSHCHENKOV"."ТРАНСПОРТ" 
   (	"ГОСНОМЕР" VARCHAR2(18 BYTE), 
	"МАРКА" VARCHAR2(60 BYTE), 
	"МОДЕЛЬ" VARCHAR2(60 BYTE), 
	"ПРОБЕГ" NUMBER(10,0), 
	"КАТЕГОРИЯ" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into PROSHCHENKOV."ВОДИТЕЛЬ"
SET DEFINE OFF;
Insert into PROSHCHENKOV."ВОДИТЕЛЬ" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ВУ","ПАСПОРТ","ТРАНСПОРТ","КАТЕГОРИЯ_B","КАТЕГОРИЯ_C","КАТЕГОРИЯ_C1","ТЕЛЕФОН") values ('В-0001','Остроумов','Ян','Касьянович','5069126302','6283664608','Е 010 КМ 178','Y','Y','Y','7(812)132-32-78');
Insert into PROSHCHENKOV."ВОДИТЕЛЬ" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ВУ","ПАСПОРТ","ТРАНСПОРТ","КАТЕГОРИЯ_B","КАТЕГОРИЯ_C","КАТЕГОРИЯ_C1","ТЕЛЕФОН") values ('В-0002','Корниенко','Максим','Севастьянович','3696472374','6186978906','В 678 ЕК 98','Y','N','Y','7(812)415-41-27');
Insert into PROSHCHENKOV."ВОДИТЕЛЬ" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ВУ","ПАСПОРТ","ТРАНСПОРТ","КАТЕГОРИЯ_B","КАТЕГОРИЯ_C","КАТЕГОРИЯ_C1","ТЕЛЕФОН") values ('В-0003','Ядов','Лев','Артемиевич','2732137192','7693345223','Е 010 КМ 178','Y','Y','Y','7(812)011-50-20');
Insert into PROSHCHENKOV."ВОДИТЕЛЬ" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ВУ","ПАСПОРТ","ТРАНСПОРТ","КАТЕГОРИЯ_B","КАТЕГОРИЯ_C","КАТЕГОРИЯ_C1","ТЕЛЕФОН") values ('В-0004','Яскунов','Станислав','Григориевич','7449964975','5389419444','К 127 МН 198','Y','Y','Y','7(812)272-20-20');
Insert into PROSHCHENKOV."ВОДИТЕЛЬ" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ВУ","ПАСПОРТ","ТРАНСПОРТ","КАТЕГОРИЯ_B","КАТЕГОРИЯ_C","КАТЕГОРИЯ_C1","ТЕЛЕФОН") values ('В-0005','Шикалов','Леонид','Всеволодович','2893503669','9894832483','К 127 МН 198','Y','Y','Y','7(812)536-80-42');
Insert into PROSHCHENKOV."ВОДИТЕЛЬ" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ВУ","ПАСПОРТ","ТРАНСПОРТ","КАТЕГОРИЯ_B","КАТЕГОРИЯ_C","КАТЕГОРИЯ_C1","ТЕЛЕФОН") values ('В-0006','Юдашкин','Мирон','Аникитевич','8590556819','1982353648','М 495 НО 198','Y','N','N','7(812)579-70-77');
Insert into PROSHCHENKOV."ВОДИТЕЛЬ" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ВУ","ПАСПОРТ","ТРАНСПОРТ","КАТЕГОРИЯ_B","КАТЕГОРИЯ_C","КАТЕГОРИЯ_C1","ТЕЛЕФОН") values ('В-0007','Гаранин','Константин','Ипатиевич','6708473698','9300559621','А 962 ВЕ 78','Y','N','N','7(812)896-91-65');
REM INSERTING into PROSHCHENKOV."ГРУЗ"
SET DEFINE OFF;
Insert into PROSHCHENKOV."ГРУЗ" (ID,"ДОГОВОР","НАЗВАНИЕ","КОЛ_ВО","ID_ЕД_ИЗМ") values ('1','1','Шкаф','5','1');
Insert into PROSHCHENKOV."ГРУЗ" (ID,"ДОГОВОР","НАЗВАНИЕ","КОЛ_ВО","ID_ЕД_ИЗМ") values ('2','2','Диван','5','1');
Insert into PROSHCHENKOV."ГРУЗ" (ID,"ДОГОВОР","НАЗВАНИЕ","КОЛ_ВО","ID_ЕД_ИЗМ") values ('3','3','Кресло','5','1');
Insert into PROSHCHENKOV."ГРУЗ" (ID,"ДОГОВОР","НАЗВАНИЕ","КОЛ_ВО","ID_ЕД_ИЗМ") values ('4','4','Системный блок','5','1');
Insert into PROSHCHENKOV."ГРУЗ" (ID,"ДОГОВОР","НАЗВАНИЕ","КОЛ_ВО","ID_ЕД_ИЗМ") values ('5','5','Принтер','5','1');
Insert into PROSHCHENKOV."ГРУЗ" (ID,"ДОГОВОР","НАЗВАНИЕ","КОЛ_ВО","ID_ЕД_ИЗМ") values ('6','6','Стол','5','1');
Insert into PROSHCHENKOV."ГРУЗ" (ID,"ДОГОВОР","НАЗВАНИЕ","КОЛ_ВО","ID_ЕД_ИЗМ") values ('7','7','Доски','50','1');
Insert into PROSHCHENKOV."ГРУЗ" (ID,"ДОГОВОР","НАЗВАНИЕ","КОЛ_ВО","ID_ЕД_ИЗМ") values ('8','8','Люстра','10','1');
Insert into PROSHCHENKOV."ГРУЗ" (ID,"ДОГОВОР","НАЗВАНИЕ","КОЛ_ВО","ID_ЕД_ИЗМ") values ('9','9','Цемент','100','2');
Insert into PROSHCHENKOV."ГРУЗ" (ID,"ДОГОВОР","НАЗВАНИЕ","КОЛ_ВО","ID_ЕД_ИЗМ") values ('10','10','Картина','30','1');
Insert into PROSHCHENKOV."ГРУЗ" (ID,"ДОГОВОР","НАЗВАНИЕ","КОЛ_ВО","ID_ЕД_ИЗМ") values ('11','10','Кирпичи','500','1');
Insert into PROSHCHENKOV."ГРУЗ" (ID,"ДОГОВОР","НАЗВАНИЕ","КОЛ_ВО","ID_ЕД_ИЗМ") values ('12','10','Черепица','30','1');
Insert into PROSHCHENKOV."ГРУЗ" (ID,"ДОГОВОР","НАЗВАНИЕ","КОЛ_ВО","ID_ЕД_ИЗМ") values ('13','10','Ковер','10','1');
REM INSERTING into PROSHCHENKOV."ДОГОВОР"
SET DEFINE OFF;
Insert into PROSHCHENKOV."ДОГОВОР" ("НОМЕР","МЕНЕДЖЕР","ВОДИТЕЛЬ","ЗАКАЗЧИК","ТРАНСПОРТ","ДАТА","СТОИМОСТЬ","ДАТА_ОТПРАВКИ","ДАТА_ДОСТАВКИ","АДРЕС_ОТПРАВКИ","АДРЕС_ДОСТАВКИ") values ('1','М-0001','В-0007','7511148202','А 962 ВЕ 78',to_date('24.07.00','DD.MM.RR'),'1000',to_date('25.07.00','DD.MM.RR'),to_date('26.07.00','DD.MM.RR'),'Ветеранов Пр., дом 76/39, кв. 176','Кондратьевский Пр., дом 85/21, кв. 32');
Insert into PROSHCHENKOV."ДОГОВОР" ("НОМЕР","МЕНЕДЖЕР","ВОДИТЕЛЬ","ЗАКАЗЧИК","ТРАНСПОРТ","ДАТА","СТОИМОСТЬ","ДАТА_ОТПРАВКИ","ДАТА_ДОСТАВКИ","АДРЕС_ОТПРАВКИ","АДРЕС_ДОСТАВКИ") values ('2','М-0002','В-0002','9831633297','В 678 ЕК 98',to_date('13.05.05','DD.MM.RR'),'1000',to_date('14.05.05','DD.MM.RR'),to_date('15.05.05','DD.MM.RR'),'Камышовая Ул., дом 28/11, кв. 187','Колпино / Ремизова Ул., дом 21/39, кв. 40');
Insert into PROSHCHENKOV."ДОГОВОР" ("НОМЕР","МЕНЕДЖЕР","ВОДИТЕЛЬ","ЗАКАЗЧИК","ТРАНСПОРТ","ДАТА","СТОИМОСТЬ","ДАТА_ОТПРАВКИ","ДАТА_ДОСТАВКИ","АДРЕС_ОТПРАВКИ","АДРЕС_ДОСТАВКИ") values ('3','М-0003','В-0001','8536833453','Е 010 КМ 178',to_date('24.03.08','DD.MM.RR'),'1000',to_date('25.03.08','DD.MM.RR'),to_date('26.03.08','DD.MM.RR'),'Кондратьевский Пр., дом 41/11, кв. 13','Витебский Пр., дом 23/51, кв. 90');
Insert into PROSHCHENKOV."ДОГОВОР" ("НОМЕР","МЕНЕДЖЕР","ВОДИТЕЛЬ","ЗАКАЗЧИК","ТРАНСПОРТ","ДАТА","СТОИМОСТЬ","ДАТА_ОТПРАВКИ","ДАТА_ДОСТАВКИ","АДРЕС_ОТПРАВКИ","АДРЕС_ДОСТАВКИ") values ('4','М-0004','В-0004','4130763143','К 127 МН 198',to_date('01.10.13','DD.MM.RR'),'1000',to_date('02.10.13','DD.MM.RR'),to_date('03.10.13','DD.MM.RR'),'Энергетиков Пр., дом 42/39, кв. 119','Доблести Ул., дом 24/11, кв. 64');
Insert into PROSHCHENKOV."ДОГОВОР" ("НОМЕР","МЕНЕДЖЕР","ВОДИТЕЛЬ","ЗАКАЗЧИК","ТРАНСПОРТ","ДАТА","СТОИМОСТЬ","ДАТА_ОТПРАВКИ","ДАТА_ДОСТАВКИ","АДРЕС_ОТПРАВКИ","АДРЕС_ДОСТАВКИ") values ('5','М-0005','В-0006','3710135867','М 495 НО 198',to_date('20.04.14','DD.MM.RR'),'1000',to_date('21.04.14','DD.MM.RR'),to_date('22.04.14','DD.MM.RR'),'Дашкевича Ул., дом 9, кв. 46','Ушинского Ул., дом 15/11, кв. 121');
Insert into PROSHCHENKOV."ДОГОВОР" ("НОМЕР","МЕНЕДЖЕР","ВОДИТЕЛЬ","ЗАКАЗЧИК","ТРАНСПОРТ","ДАТА","СТОИМОСТЬ","ДАТА_ОТПРАВКИ","ДАТА_ДОСТАВКИ","АДРЕС_ОТПРАВКИ","АДРЕС_ДОСТАВКИ") values ('6','М-0001','В-0007','9900022322','А 962 ВЕ 78',to_date('10.08.15','DD.MM.RR'),'1000',to_date('11.08.15','DD.MM.RR'),to_date('12.08.15','DD.MM.RR'),'Краснопутиловская Ул., дом 43/39, кв. 13','Советская 5 Ул., дом 3/39, кв. 21');
Insert into PROSHCHENKOV."ДОГОВОР" ("НОМЕР","МЕНЕДЖЕР","ВОДИТЕЛЬ","ЗАКАЗЧИК","ТРАНСПОРТ","ДАТА","СТОИМОСТЬ","ДАТА_ОТПРАВКИ","ДАТА_ДОСТАВКИ","АДРЕС_ОТПРАВКИ","АДРЕС_ДОСТАВКИ") values ('7','М-0002','В-0002','8551860466','В 678 ЕК 98',to_date('11.12.16','DD.MM.RR'),'1000',to_date('12.12.16','DD.MM.RR'),to_date('13.12.16','DD.MM.RR'),'Колпино / Ленина Пр., дом 18/39, кв. 48','Гражданский Пр., дом 70/21, кв. 8');
Insert into PROSHCHENKOV."ДОГОВОР" ("НОМЕР","МЕНЕДЖЕР","ВОДИТЕЛЬ","ЗАКАЗЧИК","ТРАНСПОРТ","ДАТА","СТОИМОСТЬ","ДАТА_ОТПРАВКИ","ДАТА_ДОСТАВКИ","АДРЕС_ОТПРАВКИ","АДРЕС_ДОСТАВКИ") values ('8','М-0003','В-0001','2780895187','Е 010 КМ 178',to_date('02.07.18','DD.MM.RR'),'1000',to_date('03.07.18','DD.MM.RR'),to_date('04.07.18','DD.MM.RR'),'Бухарестская Ул., дом 112/39, кв. 175','Будапештская Ул., дом 65/39, кв. 6');
Insert into PROSHCHENKOV."ДОГОВОР" ("НОМЕР","МЕНЕДЖЕР","ВОДИТЕЛЬ","ЗАКАЗЧИК","ТРАНСПОРТ","ДАТА","СТОИМОСТЬ","ДАТА_ОТПРАВКИ","ДАТА_ДОСТАВКИ","АДРЕС_ОТПРАВКИ","АДРЕС_ДОСТАВКИ") values ('9','М-0004','В-0005','6858632145','К 127 МН 198',to_date('20.01.20','DD.MM.RR'),'1000',to_date('21.01.20','DD.MM.RR'),to_date('22.01.20','DD.MM.RR'),'Коллонтай Ул., дом 32/11, кв. 92','Кузнецовская Ул., дом 16/39, кв. 14');
Insert into PROSHCHENKOV."ДОГОВОР" ("НОМЕР","МЕНЕДЖЕР","ВОДИТЕЛЬ","ЗАКАЗЧИК","ТРАНСПОРТ","ДАТА","СТОИМОСТЬ","ДАТА_ОТПРАВКИ","ДАТА_ДОСТАВКИ","АДРЕС_ОТПРАВКИ","АДРЕС_ДОСТАВКИ") values ('10','М-0005','В-0006','8264981872','М 495 НО 198',to_date('17.08.20','DD.MM.RR'),'4000',to_date('18.08.20','DD.MM.RR'),to_date('19.08.20','DD.MM.RR'),'Испытателей Пр., дом 20/39, кв. 192','Турку Ул., дом 18/39, кв. 45');
REM INSERTING into PROSHCHENKOV."ДОЛЖНОСТЬ"
SET DEFINE OFF;
Insert into PROSHCHENKOV."ДОЛЖНОСТЬ" (ID,"НАЗВАНИЕ") values ('1','Техник');
Insert into PROSHCHENKOV."ДОЛЖНОСТЬ" (ID,"НАЗВАНИЕ") values ('2','Сварщик');
Insert into PROSHCHENKOV."ДОЛЖНОСТЬ" (ID,"НАЗВАНИЕ") values ('3','Слесарь');
Insert into PROSHCHENKOV."ДОЛЖНОСТЬ" (ID,"НАЗВАНИЕ") values ('4','Электрик');
REM INSERTING into PROSHCHENKOV."ЕД_ИЗМЕРЕНИЯ"
SET DEFINE OFF;
Insert into PROSHCHENKOV."ЕД_ИЗМЕРЕНИЯ" (ID,"НАЗВАНИЕ") values ('1','шт');
Insert into PROSHCHENKOV."ЕД_ИЗМЕРЕНИЯ" (ID,"НАЗВАНИЕ") values ('2','кг');
Insert into PROSHCHENKOV."ЕД_ИЗМЕРЕНИЯ" (ID,"НАЗВАНИЕ") values ('3','л');
REM INSERTING into PROSHCHENKOV."ЗАКАЗЧИК"
SET DEFINE OFF;
Insert into PROSHCHENKOV."ЗАКАЗЧИК" ("ПАСПОРТ","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ТЕЛЕФОН") values ('7511148202','Еромеева','Элеонора','Федотовна','7(812)545-88-62');
Insert into PROSHCHENKOV."ЗАКАЗЧИК" ("ПАСПОРТ","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ТЕЛЕФОН") values ('9831633297','Кузиева','Софья','Геннадиевна','7(812)869-20-95');
Insert into PROSHCHENKOV."ЗАКАЗЧИК" ("ПАСПОРТ","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ТЕЛЕФОН") values ('8536833453','Рубцова','Виктория','Германовна','7(812)372-09-45');
Insert into PROSHCHENKOV."ЗАКАЗЧИК" ("ПАСПОРТ","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ТЕЛЕФОН") values ('4130763143','Янушко','Эльвира','Тимуровна','7(812)977-46-04');
Insert into PROSHCHENKOV."ЗАКАЗЧИК" ("ПАСПОРТ","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ТЕЛЕФОН") values ('3710135867','Погребнова','Каролина','Иосифовна','7(812)501-36-30');
Insert into PROSHCHENKOV."ЗАКАЗЧИК" ("ПАСПОРТ","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ТЕЛЕФОН") values ('9900022322','Кудашов','Гаврила','Проклович','7(812)997-09-36');
Insert into PROSHCHENKOV."ЗАКАЗЧИК" ("ПАСПОРТ","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ТЕЛЕФОН") values ('8551860466','Лапухин','Валентин','Гордеевич','7(812)093-94-93');
Insert into PROSHCHENKOV."ЗАКАЗЧИК" ("ПАСПОРТ","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ТЕЛЕФОН") values ('2780895187','Козлитина','Майя','Анатолиевна','7(812)718-32-36');
Insert into PROSHCHENKOV."ЗАКАЗЧИК" ("ПАСПОРТ","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ТЕЛЕФОН") values ('6858632145','Азаренков','Соломон','Назарович','7(812)370-01-15');
Insert into PROSHCHENKOV."ЗАКАЗЧИК" ("ПАСПОРТ","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ТЕЛЕФОН") values ('8264981872','Горшкова','Розалия','Владленовна','7(812)131-06-84');
REM INSERTING into PROSHCHENKOV."ЗАПЧАСТЬ"
SET DEFINE OFF;
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('1','Масло двигателя','2000');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('2','Фара (левая)','5000');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('3','Фара (правая)','5000');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('4','Бампер (передний)','5000');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('5','Бампер (задний)','2000');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('6','Лобовое стекло','5000');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('7','Зеркало (левое)','5000');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('8','Зеркало (правое)','5000');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('9','Тормозные диск (задние)','3000');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('10','Тормозные диски (передние)','3000');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('11','Тормозные колодки (задние)','500');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('12','Тормозные колодки (передние)','500');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('13','Амортизатор (передний, левый)','1500');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('14','Амортизатор (передний, правый)','1500');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('15','Масло КПП','3000');
Insert into PROSHCHENKOV."ЗАПЧАСТЬ" (ID,"НАЗВАНИЕ","СТОИМОСТЬ") values ('16','Воздушный фильтр','500');
REM INSERTING into PROSHCHENKOV."КАТЕГОРИЯ"
SET DEFINE OFF;
Insert into PROSHCHENKOV."КАТЕГОРИЯ" ("НАЗВАНИЕ","ОПИСАНИЕ","МИН_МАССА","МАКС_МАССА") values ('B','автомобили, разрешенная максимальная масса которых не превышает 3500 килограммов и число сидячих мест которых, помимо сиденья водителя, не превышает восьми; автомобили категории «B», сцепленные с прицепом, разрешенная максимальная масса которого не превышает 750 килограммов; автомобили категории «B», сцепленные с прицепом, разрешенная максимальная масса которого превышает 750 килограммов, но не превышает массы автомобиля без нагрузки, при условии, что общая разрешенная максимальная масса такого состава транспортных средств не превышает 3500 килограммов','0','3500');
Insert into PROSHCHENKOV."КАТЕГОРИЯ" ("НАЗВАНИЕ","ОПИСАНИЕ","МИН_МАССА","МАКС_МАССА") values ('C1','автомобили, разрешенная максимальная масса которых превышает 3500 килограммов, но не превышает 7500 килограммов; автомобили подкатегории «C1», сцепленные с прицепом, разрешенная максимальная масса которого не превышает 750 килограммов','3500','7500');
Insert into PROSHCHENKOV."КАТЕГОРИЯ" ("НАЗВАНИЕ","ОПИСАНИЕ","МИН_МАССА","МАКС_МАССА") values ('C','автомобили, разрешенная максимальная масса которых превышает 3500 килограммов; автомобили категории «C», сцепленные с прицепом, разрешенная максимальная масса которого не превышает 750 килограммов','7500',null);
REM INSERTING into PROSHCHENKOV."МЕНЕДЖЕР"
SET DEFINE OFF;
Insert into PROSHCHENKOV."МЕНЕДЖЕР" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ПАСПОРТ","ТЕЛЕФОН") values ('М-0001','Решетов','Владлен','Касьянович','2337183131','7(812)545-88-62');
Insert into PROSHCHENKOV."МЕНЕДЖЕР" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ПАСПОРТ","ТЕЛЕФОН") values ('М-0002','Буриличева','Агния','Ивановна','3210422997','7(812)869-20-95');
Insert into PROSHCHENKOV."МЕНЕДЖЕР" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ПАСПОРТ","ТЕЛЕФОН") values ('М-0003','Хигир','Фадей','Никитевич','2285361850','7(812)372-09-45');
Insert into PROSHCHENKOV."МЕНЕДЖЕР" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ПАСПОРТ","ТЕЛЕФОН") values ('М-0004','Шаршина','Рената','Станиславовна','3672875281','7(812)977-46-04');
Insert into PROSHCHENKOV."МЕНЕДЖЕР" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ПАСПОРТ","ТЕЛЕФОН") values ('М-0005','Комиссарова','Альбина','Глебовна','3177759290','7(812)501-36-30');
REM INSERTING into PROSHCHENKOV."ОБСЛ_ПЕРСОНАЛ"
SET DEFINE OFF;
Insert into PROSHCHENKOV."ОБСЛ_ПЕРСОНАЛ" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ПАСПОРТ","ID_ДОЛЖНОСТИ","ТЕЛЕФОН") values ('ОП-0001','Мышелов','Валерий','Иосифович','1365948238','1','7(812)395-19-01');
Insert into PROSHCHENKOV."ОБСЛ_ПЕРСОНАЛ" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ПАСПОРТ","ID_ДОЛЖНОСТИ","ТЕЛЕФОН") values ('ОП-0002','Назаров','Александр','Федосиевич','8612889082','2','7(812)705-86-42');
Insert into PROSHCHENKOV."ОБСЛ_ПЕРСОНАЛ" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ПАСПОРТ","ID_ДОЛЖНОСТИ","ТЕЛЕФОН") values ('ОП-0003','Радченко','Борислав','Миронович','8426380614','3','7(812)381-80-36');
Insert into PROSHCHENKOV."ОБСЛ_ПЕРСОНАЛ" ("ТАБ_НОМЕР","ФАМИЛИЯ","ИМЯ","ОТЧЕСТВО","ПАСПОРТ","ID_ДОЛЖНОСТИ","ТЕЛЕФОН") values ('ОП-0004','Аглеев','Тимур','Панкратиевич','1662155183','4','7(812)113-87-32');
REM INSERTING into PROSHCHENKOV."РЕМОНТ"
SET DEFINE OFF;
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('1','А 962 ВЕ 78','1','ОП-0001',to_date('20.07.02','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('2','В 678 ЕК 98','2','ОП-0002',to_date('27.10.02','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('3','Е 010 КМ 178','3','ОП-0003',to_date('28.06.04','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('4','К 127 МН 198','4','ОП-0004',to_date('13.02.06','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('5','М 495 НО 198','5','ОП-0001',to_date('15.12.06','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('6','А 962 ВЕ 78','6','ОП-0002',to_date('17.05.07','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('7','В 678 ЕК 98','7','ОП-0003',to_date('30.11.07','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('8','Е 010 КМ 178','8','ОП-0004',to_date('24.07.08','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('9','К 127 МН 198','9','ОП-0001',to_date('02.11.09','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('10','М 495 НО 198','10','ОП-0002',to_date('12.11.10','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('11','А 962 ВЕ 78','11','ОП-0003',to_date('24.11.10','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('12','В 678 ЕК 98','12','ОП-0004',to_date('10.12.13','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('13','Е 010 КМ 178','13','ОП-0001',to_date('22.04.14','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('14','К 127 МН 198','14','ОП-0002',to_date('13.09.17','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('15','М 495 НО 198','15','ОП-0003',to_date('01.06.19','DD.MM.RR'));
Insert into PROSHCHENKOV."РЕМОНТ" (ID,"ТРАНСПОРТ","ЗАПЧАСТЬ","ОБСЛ_ПЕРСОНАЛ","ДАТА") values ('16','А 962 ВЕ 78','16','ОП-0004',to_date('10.03.20','DD.MM.RR'));
REM INSERTING into PROSHCHENKOV."ТРАНСПОРТ"
SET DEFINE OFF;
Insert into PROSHCHENKOV."ТРАНСПОРТ" ("ГОСНОМЕР","МАРКА","МОДЕЛЬ","ПРОБЕГ","КАТЕГОРИЯ") values ('А 962 ВЕ 78','ГАЗель','Бизнес','97678','B');
Insert into PROSHCHENKOV."ТРАНСПОРТ" ("ГОСНОМЕР","МАРКА","МОДЕЛЬ","ПРОБЕГ","КАТЕГОРИЯ") values ('В 678 ЕК 98','ГАЗель','NEXT','94012','C1');
Insert into PROSHCHENKOV."ТРАНСПОРТ" ("ГОСНОМЕР","МАРКА","МОДЕЛЬ","ПРОБЕГ","КАТЕГОРИЯ") values ('Е 010 КМ 178','КамАЗ','65117','54535','C');
Insert into PROSHCHENKOV."ТРАНСПОРТ" ("ГОСНОМЕР","МАРКА","МОДЕЛЬ","ПРОБЕГ","КАТЕГОРИЯ") values ('К 127 МН 198','КамАЗ','43253','51399','C');
Insert into PROSHCHENKOV."ТРАНСПОРТ" ("ГОСНОМЕР","МАРКА","МОДЕЛЬ","ПРОБЕГ","КАТЕГОРИЯ") values ('М 495 НО 198','УАЗ','Профи','15077','B');
--------------------------------------------------------
--  DDL for Index ВОДИТЕЛЬ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROSHCHENKOV"."ВОДИТЕЛЬ_PK" ON "PROSHCHENKOV"."ВОДИТЕЛЬ" ("ТАБ_НОМЕР") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ГРУЗ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROSHCHENKOV"."ГРУЗ_PK" ON "PROSHCHENKOV"."ГРУЗ" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ДОГОВОР_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROSHCHENKOV"."ДОГОВОР_PK" ON "PROSHCHENKOV"."ДОГОВОР" ("НОМЕР") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ДОЛЖНОСТЬ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROSHCHENKOV"."ДОЛЖНОСТЬ_PK" ON "PROSHCHENKOV"."ДОЛЖНОСТЬ" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ЕД_ИЗМЕРЕНИЯ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROSHCHENKOV"."ЕД_ИЗМЕРЕНИЯ_PK" ON "PROSHCHENKOV"."ЕД_ИЗМЕРЕНИЯ" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ЗАКАЗЧИК_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROSHCHENKOV"."ЗАКАЗЧИК_PK" ON "PROSHCHENKOV"."ЗАКАЗЧИК" ("ПАСПОРТ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ЗАПЧАСТЬ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROSHCHENKOV"."ЗАПЧАСТЬ_PK" ON "PROSHCHENKOV"."ЗАПЧАСТЬ" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index КАТЕГОРИЯ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROSHCHENKOV"."КАТЕГОРИЯ_PK" ON "PROSHCHENKOV"."КАТЕГОРИЯ" ("НАЗВАНИЕ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index МЕНЕДЖЕР_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROSHCHENKOV"."МЕНЕДЖЕР_PK" ON "PROSHCHENKOV"."МЕНЕДЖЕР" ("ТАБ_НОМЕР") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ОБСЛ_ПЕРСОНАЛ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROSHCHENKOV"."ОБСЛ_ПЕРСОНАЛ_PK" ON "PROSHCHENKOV"."ОБСЛ_ПЕРСОНАЛ" ("ТАБ_НОМЕР") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index РЕМОНТ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROSHCHENKOV"."РЕМОНТ_PK" ON "PROSHCHENKOV"."РЕМОНТ" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ТРАНСПОРТ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROSHCHENKOV"."ТРАНСПОРТ_PK" ON "PROSHCHENKOV"."ТРАНСПОРТ" ("ГОСНОМЕР") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table МЕНЕДЖЕР
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."МЕНЕДЖЕР" MODIFY ("ТАБ_НОМЕР" NOT NULL ENABLE);
  ALTER TABLE "PROSHCHENKOV"."МЕНЕДЖЕР" ADD CONSTRAINT "МЕНЕДЖЕР_PK" PRIMARY KEY ("ТАБ_НОМЕР")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ДОЛЖНОСТЬ
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."ДОЛЖНОСТЬ" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "PROSHCHENKOV"."ДОЛЖНОСТЬ" ADD CONSTRAINT "ДОЛЖНОСТЬ_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ГРУЗ
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."ГРУЗ" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "PROSHCHENKOV"."ГРУЗ" ADD CONSTRAINT "ГРУЗ_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ВОДИТЕЛЬ
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."ВОДИТЕЛЬ" MODIFY ("ТАБ_НОМЕР" NOT NULL ENABLE);
  ALTER TABLE "PROSHCHENKOV"."ВОДИТЕЛЬ" ADD CONSTRAINT "ВОДИТЕЛЬ_PK" PRIMARY KEY ("ТАБ_НОМЕР")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ДОГОВОР
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."ДОГОВОР" MODIFY ("НОМЕР" NOT NULL ENABLE);
  ALTER TABLE "PROSHCHENKOV"."ДОГОВОР" ADD CONSTRAINT "ДОГОВОР_PK" PRIMARY KEY ("НОМЕР")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ЗАКАЗЧИК
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."ЗАКАЗЧИК" MODIFY ("ПАСПОРТ" NOT NULL ENABLE);
  ALTER TABLE "PROSHCHENKOV"."ЗАКАЗЧИК" ADD CONSTRAINT "ЗАКАЗЧИК_PK" PRIMARY KEY ("ПАСПОРТ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table РЕМОНТ
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."РЕМОНТ" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "PROSHCHENKOV"."РЕМОНТ" ADD CONSTRAINT "РЕМОНТ_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ОБСЛ_ПЕРСОНАЛ
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."ОБСЛ_ПЕРСОНАЛ" MODIFY ("ТАБ_НОМЕР" NOT NULL ENABLE);
  ALTER TABLE "PROSHCHENKOV"."ОБСЛ_ПЕРСОНАЛ" ADD CONSTRAINT "ОБСЛ_ПЕРСОНАЛ_PK" PRIMARY KEY ("ТАБ_НОМЕР")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table КАТЕГОРИЯ
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."КАТЕГОРИЯ" MODIFY ("НАЗВАНИЕ" NOT NULL ENABLE);
  ALTER TABLE "PROSHCHENKOV"."КАТЕГОРИЯ" ADD CONSTRAINT "КАТЕГОРИЯ_PK" PRIMARY KEY ("НАЗВАНИЕ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ЕД_ИЗМЕРЕНИЯ
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."ЕД_ИЗМЕРЕНИЯ" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "PROSHCHENKOV"."ЕД_ИЗМЕРЕНИЯ" ADD CONSTRAINT "ЕД_ИЗМЕРЕНИЯ_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ЗАПЧАСТЬ
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."ЗАПЧАСТЬ" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "PROSHCHENKOV"."ЗАПЧАСТЬ" ADD CONSTRAINT "ЗАПЧАСТЬ_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ТРАНСПОРТ
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."ТРАНСПОРТ" MODIFY ("ГОСНОМЕР" NOT NULL ENABLE);
  ALTER TABLE "PROSHCHENKOV"."ТРАНСПОРТ" ADD CONSTRAINT "ТРАНСПОРТ_PK" PRIMARY KEY ("ГОСНОМЕР")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ВОДИТЕЛЬ
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."ВОДИТЕЛЬ" ADD CONSTRAINT "ВОДИТЕЛЬ_FK1" FOREIGN KEY ("ТРАНСПОРТ")
	  REFERENCES "PROSHCHENKOV"."ТРАНСПОРТ" ("ГОСНОМЕР") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ГРУЗ
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."ГРУЗ" ADD CONSTRAINT "ГРУЗ_FK2" FOREIGN KEY ("ДОГОВОР")
	  REFERENCES "PROSHCHENKOV"."ДОГОВОР" ("НОМЕР") ON DELETE SET NULL ENABLE;
  ALTER TABLE "PROSHCHENKOV"."ГРУЗ" ADD CONSTRAINT "ГРУЗ_FK1" FOREIGN KEY ("ID_ЕД_ИЗМ")
	  REFERENCES "PROSHCHENKOV"."ЕД_ИЗМЕРЕНИЯ" ("ID") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ДОГОВОР
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."ДОГОВОР" ADD CONSTRAINT "ДОГОВОР_FK1" FOREIGN KEY ("МЕНЕДЖЕР")
	  REFERENCES "PROSHCHENKOV"."МЕНЕДЖЕР" ("ТАБ_НОМЕР") ON DELETE SET NULL ENABLE;
  ALTER TABLE "PROSHCHENKOV"."ДОГОВОР" ADD CONSTRAINT "ДОГОВОР_FK2" FOREIGN KEY ("ВОДИТЕЛЬ")
	  REFERENCES "PROSHCHENKOV"."ВОДИТЕЛЬ" ("ТАБ_НОМЕР") ON DELETE SET NULL ENABLE;
  ALTER TABLE "PROSHCHENKOV"."ДОГОВОР" ADD CONSTRAINT "ДОГОВОР_FK3" FOREIGN KEY ("ЗАКАЗЧИК")
	  REFERENCES "PROSHCHENKOV"."ЗАКАЗЧИК" ("ПАСПОРТ") ON DELETE SET NULL ENABLE;
  ALTER TABLE "PROSHCHENKOV"."ДОГОВОР" ADD CONSTRAINT "ДОГОВОР_FK4" FOREIGN KEY ("ТРАНСПОРТ")
	  REFERENCES "PROSHCHENKOV"."ТРАНСПОРТ" ("ГОСНОМЕР") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ОБСЛ_ПЕРСОНАЛ
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."ОБСЛ_ПЕРСОНАЛ" ADD CONSTRAINT "ОБСЛ_ПЕРСОНАЛ_FK1" FOREIGN KEY ("ID_ДОЛЖНОСТИ")
	  REFERENCES "PROSHCHENKOV"."ДОЛЖНОСТЬ" ("ID") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table РЕМОНТ
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."РЕМОНТ" ADD CONSTRAINT "РЕМОНТ_FK1" FOREIGN KEY ("ЗАПЧАСТЬ")
	  REFERENCES "PROSHCHENKOV"."ЗАПЧАСТЬ" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "PROSHCHENKOV"."РЕМОНТ" ADD CONSTRAINT "РЕМОНТ_FK2" FOREIGN KEY ("ОБСЛ_ПЕРСОНАЛ")
	  REFERENCES "PROSHCHENKOV"."ОБСЛ_ПЕРСОНАЛ" ("ТАБ_НОМЕР") ON DELETE SET NULL ENABLE;
  ALTER TABLE "PROSHCHENKOV"."РЕМОНТ" ADD CONSTRAINT "РЕМОНТ_FK3" FOREIGN KEY ("ТРАНСПОРТ")
	  REFERENCES "PROSHCHENKOV"."ТРАНСПОРТ" ("ГОСНОМЕР") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ТРАНСПОРТ
--------------------------------------------------------

  ALTER TABLE "PROSHCHENKOV"."ТРАНСПОРТ" ADD CONSTRAINT "ТРАНСПОРТ_FK1" FOREIGN KEY ("КАТЕГОРИЯ")
	  REFERENCES "PROSHCHENKOV"."КАТЕГОРИЯ" ("НАЗВАНИЕ") ON DELETE SET NULL ENABLE;
