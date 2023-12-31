--------------------------------------------------------
--  파일이 생성됨 - 수요일-5월-03-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_BOOK
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_FLOWER"."SEQ_BOOK"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CARTNUM
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_FLOWER"."SEQ_CARTNUM"  MINVALUE 2 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 350 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ORDERHISTORY
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_FLOWER"."SEQ_ORDERHISTORY"  MINVALUE 6 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 186 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PAYMENT
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_FLOWER"."SEQ_PAYMENT"  MINVALUE 6 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 218 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_REVIEW
--------------------------------------------------------

   CREATE SEQUENCE  "PROJECT_FLOWER"."SEQ_REVIEW"  MINVALUE 3 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 152 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "PROJECT_FLOWER"."CART" 
   (	"CART_NUM" NUMBER(4,0), 
	"USER_ID" VARCHAR2(30 BYTE), 
	"F_ID" VARCHAR2(100 BYTE), 
	"CNT_CART" NUMBER(4,0), 
	"F_PRICE" NUMBER(6,0), 
	"TOT_PRICE" NUMBER(10,0), 
	"F_THUMBNAIL" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FLOWER
--------------------------------------------------------

  CREATE TABLE "PROJECT_FLOWER"."FLOWER" 
   (	"F_ID" VARCHAR2(100 BYTE), 
	"F_NAME" VARCHAR2(200 BYTE), 
	"F_PRICE" NUMBER(6,0), 
	"F_QUANT" NUMBER(4,0) DEFAULT 0, 
	"F_CATEGORY" NUMBER(1,0), 
	"F_IMG" VARCHAR2(200 BYTE), 
	"F_THUMBNAIL" VARCHAR2(200 BYTE), 
	"F_INFO" VARCHAR2(4000 BYTE), 
	"F_STARPOINT" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "PROJECT_FLOWER"."MEMBER" 
   (	"USER_ID" VARCHAR2(30 BYTE), 
	"USER_PWD" VARCHAR2(30 BYTE), 
	"USER_NAME" VARCHAR2(30 BYTE), 
	"USER_PHONE" VARCHAR2(50 BYTE), 
	"USER_BIRTH" VARCHAR2(50 BYTE), 
	"USER_ADDR" VARCHAR2(300 BYTE), 
	"USER_EMAIL" VARCHAR2(150 BYTE), 
	"USER_REGDATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ORDER_HISTORY
--------------------------------------------------------

  CREATE TABLE "PROJECT_FLOWER"."ORDER_HISTORY" 
   (	"ORDER_NUM" NUMBER(4,0), 
	"PAYMENT_ID" NUMBER(20,0), 
	"COMPLETE" NUMBER(1,0) DEFAULT 0, 
	"COMPLETE_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "PROJECT_FLOWER"."ORDER_HISTORY"."PAYMENT_ID" IS '주문번호';
   COMMENT ON COLUMN "PROJECT_FLOWER"."ORDER_HISTORY"."COMPLETE" IS '0:미완료, 1:완료';
--------------------------------------------------------
--  DDL for Table PAYMENT
--------------------------------------------------------

  CREATE TABLE "PROJECT_FLOWER"."PAYMENT" 
   (	"PAYMENT_ID" NUMBER(20,0), 
	"USER_ID" VARCHAR2(30 BYTE), 
	"PAYMENT_DATE" DATE DEFAULT SYSDATE, 
	"PAYMENT_SUDAN" NUMBER(1,0), 
	"PICK_DEL" NUMBER(1,0), 
	"F_ID" VARCHAR2(100 BYTE), 
	"F_PRICE" NUMBER(6,0), 
	"CNT" NUMBER(4,0), 
	"TOT_PRICE" NUMBER(10,0), 
	"PICK_DAY" VARCHAR2(100 BYTE), 
	"DEL_DAY" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "PROJECT_FLOWER"."PAYMENT"."PAYMENT_ID" IS '주문번호';
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "PROJECT_FLOWER"."REVIEW" 
   (	"REVIEW_NUM" NUMBER(4,0), 
	"USER_ID" VARCHAR2(30 BYTE), 
	"F_ID" VARCHAR2(100 BYTE), 
	"COMPLETE" NUMBER(1,0), 
	"C_COMMENT" VARCHAR2(4000 BYTE), 
	"COMMENT_DATE" DATE DEFAULT SYSDATE, 
	"ADMIN_COMMENT" VARCHAR2(4000 BYTE) DEFAULT '0', 
	"F_STARPOINT" VARCHAR2(100 BYTE), 
	"PAYMENT_ID" NUMBER(20,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into PROJECT_FLOWER.CART
SET DEFINE OFF;
Insert into PROJECT_FLOWER.CART (CART_NUM,USER_ID,F_ID,CNT_CART,F_PRICE,TOT_PRICE,F_THUMBNAIL) values (349,'TEST','sg0003',3,5000,5000,'pinkrose_sg_thum.jpg');
REM INSERTING into PROJECT_FLOWER.FLOWER
SET DEFINE OFF;
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('sg0001','붉은장미 한송이',5000,100,0,'rose_sg.jpg','rose_sg_thum.jpg','붉은장미 한송이입니다. 행사, 음악회, 답례품 등으로 추천드립니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('sg0002','하얀장미 한송이',6000,100,0,'whiterose_sg.jpg','whiterose_sg_thum.jpg','하얀장미 한송이입니다. 행사, 음악회, 답례품 등으로 추천드립니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('sg0003','핑크장미 한송이',5000,100,0,'pinkrose_sg.jpg','pinkrose_sg_thum.jpg','핑크빛장미 한송이입니다. 행사, 음악회, 답례품 등으로 추천드립니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('sg0004','노랑장미 한송이',5000,100,0,'yellowrose_sg.jpg','yellowrose_sg_thum.jpg','노랑장미 한송이입니다. 행사, 음악회, 답례품 등으로 추천드립니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('sg0005','해바라기 한송이',10000,100,0,'sunflower_sg.jpg','sunflower_sg_thum.jpg','해바라기 한송이입니다. 행사, 음악회, 답례품 등으로 추천드립니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('sg0006','수국 한송이',12000,100,0,'hydrangea_sg.jpg','hydrangea_sg_thum.jpg','파란수국 한송이입니다. 행사, 음악회, 답례품 등으로 추천드립니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('sg0007','튤립 한송이',16000,100,0,'tulip_sg.jpg','tulip_sg_thum.jpg','튤립 한송이입니다. 행사, 음악회, 답례품 등으로 추천드립니다.~~','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('sg0008','카네이션 한송이',7000,100,0,'carnation_sg.jpg','carnation_sg_thum.jpg','카네이션 한송이입니다. 행사, 음악회, 답례품 등으로 추천드립니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bq0001','내 마음에 핀 장미',54000,10,1,'rose_bq.jpg','rose_bq_thum.jpg','사랑고백에 좋은 장미입니다. 빨강장미는 이렇게 혼자보다도 같이 있을때 정말 예쁩니다. 오래도록 영원히 사랑하고픈 사람에게 주세요.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bq0002','해바라기 너만바라봄',53000,8,1,'sunflower_bq.jpg','sunflower_bq_thum.jpg','해바라기만을 좋아하는 분들이 있습니다. 아마도 따뜻하고 여유가 있으시고 배려가 있으신분들같습니다. 꽃은 그 자체만으로도 아름답죠.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bq0003','핑크빛 튤립 꽃다발',58000,7,1,'pinktulip_bq.jpg','pinktulip_bq_thum.jpg','겹튤립은 작약처럼 여러겹으로 피어나는 아주 매력적이 꽃이랍니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bq0004','특별한 지금',52000,10,1,'pinkrose_bq.jpg','pinkrose_bq_thum.jpg','여러가지 핑크색의 장미들로 하트모양의 꽃 다발을 제작해 보았습니다. 사랑의 마음을 전달할때 하트모양과 장미가 빠질 수 없겠죠?','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bq0005','봄날의 로맨스',64000,10,1,'spring_bq.jpg','spring_bq_thum.jpg','화이트데이를 맞이하는 연인들을 위해! 아직도 짝사랑을 하고 계신분을 위해!','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bq0006','대형 레몬빛 다발',90000,9,1,'bigyellow_bq.jpg','bigyellow_bq_thum.jpg','봄을 닮은 어레인지로 산뜻한 공간 연출과 보내시는 분의 마음을 담았습니다. 제철 꽃을 사용해서 더욱 신선하고 건강한 작품이 완성되었습니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bq0007','설렘다발',54000,10,1,'flutt_bq.jpg','flutt_bq_thum.jpg','상큼하고 싱그러움이 넘쳐나는듯한 꽃다발입니다. 봄의 신선함과 향긋함이 전해져 이봄에 아주 좋은 선물일듯 싶습니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bq0008','다가온 사랑',53000,10,1,'pinkcol_bq.jpg','pinkcol_bq_thum.jpg','핑크빛 꽃들만 모았습니다. 사랑을 고백해 보세요!','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bq0009','퐁퐁 소국 꽃다발',53000,10,1,'chry_bq.jpg','chry_bq_thum.jpg','몽글몽글한 부드럽고 솜사탕같은 퐁퐁소국으로만으로 구성된 꽃다발입니다. 사랑스럽고 귀여워서 인기있고, 다른 꽃들에 비해 오래보실 수 있어요~!','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bq0010','꽃사랑',55000,10,1,'flolove_bq.jpg','flolove_bq_thum.jpg','늘 들어도 듣고 싶은 말, 사랑해. 꽃과 함께 당신의 끝 없는 사랑을 전해 보세요.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('pt0001','All that rose',72000,10,2,'blackrose_pot.jpg','blackrose_pot_thum.jpg','붉은장미와 블랙화기 검은 열매와의 배치가 섹시함의 절정을 보여주는 상품입니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('pt0002','사랑의 빛',54000,10,2,'lovelight_pot.jpg','lovelight_pot_thum.jpg','흰색화기에 붉은색 카네이션과 핑크톤의 꽃들로 구성 된 앙증맞은 크기의 화기꽂이입니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('pt0003','물들어',77000,8,2,'pinkrose_pot.jpg','pinkrose_pot_thum.jpg','인지언핑크색 화기가 정말 매력적입니다. 밀크색 장미가 갖고 싶다는 욕구를 자극하지 않나요?','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('pt0004','봄,꽃들의 축제',63000,10,2,'springfes_pot.jpg','springfes_pot_thum.jpg','라넌의 여리한 느낌과 부풀리움의 여리지만 강한 잎줄기를 네추럴하게 배치하여 사랑스러운 느낌을 강조했습니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('pt0005','오렌지 사파이어',58000,10,2,'orange_pot.jpg','orange_pot_thum.jpg','블랙화기에 상큼한 오렌지컬러의 꽃들을 아담하게 꽂아 어레인지 하였습니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('pt0006','Sunny',59000,10,2,'sunny_pot.jpg','sunny_pot_thum.jpg','재미있는 플라워디자인컨셉을 가지고 이번 여름시즌 상품을 만들었습니다. 생기발랄한 소녀시대처럼 개성가득합니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('pt0007','The Most Wonderful Time',67000,10,2,'winter_pot.jpg','winter_pot_thum.jpg','아름다운 향과 색이 교묘하게 어우러지는 꽃은 꼭 필요한 우리 생활의 이유입니다. 겨울은 알리는 자연의 꽃으로 그 감상여행을 떠나보세요.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('pt0008','흰색플라워박스',140000,-25,2,'whiteflower_pot.jpg','whiteflower_pot_thum.jpg','순수하고 아름다운 백장미들을 한대 모아서 어레인지 했습니다. 마치 눈이 덮인 하얀 언덕위에 올라 온 것 같은 느낌이 듭니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('pt0009','Purple Rose',99000,10,2,'puplerose_pot.jpg','puplerose_pot_thum.jpg','보라 빛이 예쁜 오션송장미와 핑크 빛이 도는 귀엽고 여성스러운 왁스플라워의 조화가 잘 어울리는 화병입니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('pt0010','가을을 닮은 풍경속으로',62000,10,2,'fall_pot.jpg','fall_pot_thum.jpg','갈색톤이 주조를 이루는 덕분에 가을을 닮은 모습이 아름답고 사랑스러워 보입니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bk0001','프리지아 향기를 담아',65000,10,3,'freesia_bs.jpg','freesia_bs_thum.jpg','이 꽃바구니의 구성은 노랑색입니다. 봄의 꽃은 모름지기 노랑색입니다. 향기가 짙은 프리지아 몇몇송이만으로도 꽃바구니 전체의 향기를 느끼기에 아주 족합니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bk0002','어제보다 오늘 더',69000,10,3,'rose_bs.jpg','rose_bs_thum.jpg','사랑고백에 좋은 장미바구니입니다. 빨강장미는 이렇게 혼자보다도 같이 있을때 정말 예쁩니다. 오래도록 영원히 사랑하고픈 사람에게 주세요.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bk0003','사랑의 카네이션',64000,10,3,'carnation_bs.jpg','carnation_bs_thum.jpg','이 상품은 로맨틱하고 부드럽습니다. 언제나 바다같이 열려있는 부드러운 엄마의 품같이 따스한 느낌같습니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bk0004','썬플라워 가든',67000,10,3,'sungarden_bs.jpg','sungarden_bs_thum.jpg','해바라기는 오로지 해만 바라보기 때문에 한 사람만을 사랑한다는 의미를 가지고 있어요. 한송이만으로도 존재감이 있는 해바라기로 여름의 정취를 느껴보세요.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bk0005','Spring n sweet',65000,10,3,'spring_bs.jpg','spring_bs_thum.jpg','봄맞이 봄꽃을 준비하였습니다. 봄의 화사함을 느껴보시겠어요?','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bk0006','청량한 수국바구니',75000,10,3,'hydrangea_bs.jpg','hydrangea_bs_thum.jpg','파스텔 색감의 그룹핑을 연출하였습니다. 바구니와의 매치가 좋은 상품입니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bk0007','핑크빛 사랑',59000,10,3,'pingrose_bs.jpg','pingrose_bs_thum.jpg','핑크톤의 장미들로 이루어진 핑크 장미 꽃바구니입니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bk0008','사랑스러운 수국바구니',76000,10,3,'hydrangeaCol_bs.jpg','hydrangeaCol_bs_thum.jpg','여름에 더욱 이쁜 수국과 연한 핑크계열 장미와 연보라 장미가 들어가서 더욱 고급스러운 이미지입니다. 다양한 종류의 꽃과 소재로 풍성하게 제작된 대형 혼합꽃바구니입니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bk0009','세련된 혼합꽃상자',58000,10,3,'mix_bs.jpg','mix_bs_thum.jpg','다양한 종류의 꽃과 소재로 풍성하게 제작된 대형 혼합꽃바구니입니다. 부모님 생신이나 기념일에 많이 주문해주시는 상품 중 하나입니다.','0');
Insert into PROJECT_FLOWER.FLOWER (F_ID,F_NAME,F_PRICE,F_QUANT,F_CATEGORY,F_IMG,F_THUMBNAIL,F_INFO,F_STARPOINT) values ('bk0010','퍼플n핑크 꽃바구니',68000,10,3,'puplepink_bs.jpg','puplepink_bs_thum.jpg','연핑크장미와 짙은 자주색의 배합이 깔끔해요. 적절히 그린소재를 넣어줘서. 색이 과하지 않습니다.','0');
REM INSERTING into PROJECT_FLOWER.MEMBER
SET DEFINE OFF;
Insert into PROJECT_FLOWER.MEMBER (USER_ID,USER_PWD,USER_NAME,USER_PHONE,USER_BIRTH,USER_ADDR,USER_EMAIL,USER_REGDATE) values ('TEST','1234','테스트','010-0000-0003','900110','경기도 성남시 1번지','TEST@TESTIN.COM',to_date('23/04/19 16:52:12','RR/MM/DD HH24:MI:SS'));
Insert into PROJECT_FLOWER.MEMBER (USER_ID,USER_PWD,USER_NAME,USER_PHONE,USER_BIRTH,USER_ADDR,USER_EMAIL,USER_REGDATE) values ('Admin','admin','관리자','010-1111-2222','901015','경기도 성남시 수정구','flower@flower.com',to_date('23/04/27 16:21:11','RR/MM/DD HH24:MI:SS'));
REM INSERTING into PROJECT_FLOWER.ORDER_HISTORY
SET DEFINE OFF;
REM INSERTING into PROJECT_FLOWER.PAYMENT
SET DEFINE OFF;
REM INSERTING into PROJECT_FLOWER.REVIEW
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_CART
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_FLOWER"."PK_CART" ON "PROJECT_FLOWER"."CART" ("CART_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_FLOWER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_FLOWER"."PK_FLOWER" ON "PROJECT_FLOWER"."FLOWER" ("F_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_ORDER_HISTORY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_FLOWER"."PK_ORDER_HISTORY" ON "PROJECT_FLOWER"."ORDER_HISTORY" ("ORDER_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PAYMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_FLOWER"."PK_PAYMENT" ON "PROJECT_FLOWER"."PAYMENT" ("PAYMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_REVIEW
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_FLOWER"."PK_REVIEW" ON "PROJECT_FLOWER"."REVIEW" ("REVIEW_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_USER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_FLOWER"."PK_USER" ON "PROJECT_FLOWER"."MEMBER" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_CART
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_FLOWER"."PK_CART" ON "PROJECT_FLOWER"."CART" ("CART_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_FLOWER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_FLOWER"."PK_FLOWER" ON "PROJECT_FLOWER"."FLOWER" ("F_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_USER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_FLOWER"."PK_USER" ON "PROJECT_FLOWER"."MEMBER" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_ORDER_HISTORY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_FLOWER"."PK_ORDER_HISTORY" ON "PROJECT_FLOWER"."ORDER_HISTORY" ("ORDER_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PAYMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_FLOWER"."PK_PAYMENT" ON "PROJECT_FLOWER"."PAYMENT" ("PAYMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_REVIEW
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROJECT_FLOWER"."PK_REVIEW" ON "PROJECT_FLOWER"."REVIEW" ("REVIEW_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "PROJECT_FLOWER"."CART" ADD CONSTRAINT "PK_CART" PRIMARY KEY ("CART_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT_FLOWER"."CART" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."CART" MODIFY ("CART_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FLOWER
--------------------------------------------------------

  ALTER TABLE "PROJECT_FLOWER"."FLOWER" ADD CONSTRAINT "PK_FLOWER" PRIMARY KEY ("F_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT_FLOWER"."FLOWER" MODIFY ("F_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."FLOWER" MODIFY ("F_QUANT" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."FLOWER" MODIFY ("F_PRICE" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."FLOWER" MODIFY ("F_NAME" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."FLOWER" MODIFY ("F_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "PROJECT_FLOWER"."MEMBER" ADD CONSTRAINT "PK_USER" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT_FLOWER"."MEMBER" MODIFY ("USER_REGDATE" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."MEMBER" MODIFY ("USER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."MEMBER" MODIFY ("USER_ADDR" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."MEMBER" MODIFY ("USER_BIRTH" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."MEMBER" MODIFY ("USER_PHONE" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."MEMBER" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."MEMBER" MODIFY ("USER_PWD" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."MEMBER" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDER_HISTORY
--------------------------------------------------------

  ALTER TABLE "PROJECT_FLOWER"."ORDER_HISTORY" ADD CONSTRAINT "PK_ORDER_HISTORY" PRIMARY KEY ("ORDER_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT_FLOWER"."ORDER_HISTORY" MODIFY ("COMPLETE" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."ORDER_HISTORY" MODIFY ("PAYMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."ORDER_HISTORY" MODIFY ("ORDER_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "PROJECT_FLOWER"."PAYMENT" ADD CONSTRAINT "PK_PAYMENT" PRIMARY KEY ("PAYMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT_FLOWER"."PAYMENT" MODIFY ("TOT_PRICE" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."PAYMENT" MODIFY ("CNT" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."PAYMENT" MODIFY ("F_PRICE" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."PAYMENT" MODIFY ("F_ID" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."PAYMENT" MODIFY ("PICK_DEL" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."PAYMENT" MODIFY ("PAYMENT_SUDAN" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."PAYMENT" MODIFY ("PAYMENT_DATE" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."PAYMENT" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."PAYMENT" MODIFY ("PAYMENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "PROJECT_FLOWER"."REVIEW" ADD CONSTRAINT "PK_REVIEW" PRIMARY KEY ("REVIEW_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PROJECT_FLOWER"."REVIEW" MODIFY ("F_ID" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."REVIEW" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "PROJECT_FLOWER"."REVIEW" MODIFY ("REVIEW_NUM" NOT NULL ENABLE);
