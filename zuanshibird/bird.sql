SET  NAMES  UTF8;
DROP  DATABASE  IF  EXISTS  bird;
CREATE  DATABASE  bird  CHARSET   UTF8;
USE   bird;
CREATE  TABLE   bird_ring_family(           #戒指类别表
	fid  INT  PRIMARY  KEY  AUTO_INCREMENT,  #类别表ID
	fname  VARCHAR(64)                       #戒指名称
);

INSERT  INTO   bird_ring_family   VALUES('1','钻石');
INSERT  INTO   bird_ring_family   VALUES('2','钻戒');
INSERT  INTO   bird_ring_family   VALUES('3','对戒');
INSERT  INTO   bird_ring_family   VALUES('4','配饰');
INSERT  INTO   bird_ring_family   VALUES('5','订制');

#=============================================#戒指商品表===================================================================#

	CREATE   TABLE   bird_ring(                 #戒指商品表
		lid  INT  PRIMARY  KEY  AUTO_INCREMENT,  #商品表ID
		family_id    INT,                        #戒指所属编号
		product_id   INT,                        #产品编号
		title        VARCHAR(64),                #标题
		price        DECIMAL(10,2),              #价格
		sold_count     INT,                      #售出
		comment_number INT,                      #评论数量
		product      VARCHAR(64),                #品名
		material     VARCHAR(64),                #材质
		hand_size    VARCHAR(32),                #手寸
		diamond      VARCHAR(64),                #钻石
		style        VARCHAR(32),                #风格/货号
		main_weight  VARCHAR(32),                #主钻重量
		vice_weight  VARCHAR(32),                #副钻重量
		color        VARCHAR(16),                #颜色
		clarity      VARCHAR(16),                #净度
		cut          VARCHAR(16),                #切工
		service      VARCHAR(128),               #服务
		certificate  VARCHAR(16),                #证书
		delivery     VARCHAR(32)                 #配送
	);

	INSERT INTO bird_ring VALUE(NULL,'3','914','点滴时光','6570','3263','250','18K金钻石戒指','铂950','18c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','爱河','4070','3544','107','16K金钻石戒指','铂900','18c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','聆听','6990','2701','213','12K金钻石戒指','铂750','17c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','纯境','4810','5348','274','18K金钻石戒指','铂300','15c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','灵境','7280','2495','133','12K金钻石戒指','铂400','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','情丝','3780','1170','55','18K金钻石戒指','铂800','12c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','相互','5500','147','21','12K金钻石戒指','铂900','16c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','依偎','6430','1644','133','16K金钻石戒指','铂200','17c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');

	INSERT INTO bird_ring VALUE(NULL,'3','914','北极光 月光女王','32500','2460','540','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','Energy能量','36200','1353','467','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','倾心','4700','5900','249','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','拥暖Ⅱ','10240','7305','588','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','永恒之约Ⅱ','5500','11673','829','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','北极光 森林女王','29600','700','190','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','永恒之约','21700','9432','788','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','xxx','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');

	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');
	INSERT INTO bird_ring VALUE(NULL,'3','914','天籁','7450','2375','122','16K金钻石戒指','铂1900','19c','对戒','RB914爱河','0.03克','0.02克','银色','--','--','售后服务','国检','按时配送');

#============================================#戒指图片表=====================================================================#

	CREATE  TABLE   bird_ring_pic(            #戒指图片表
		pid  INT PRIMARY  KEY  AUTO_INCREMENT, #图表ID
		ring_id   INT,                         #戒指编号
		sm        VARCHAR(128),                #小图片路径
		md        VARCHAR(128),                #中图片路径
		lg        VARCHAR(128)                 #大图片路径
	);

	INSERT INTO bird_ring_pic VALUE(NULL,'1','img/product/sm/sm-01.jpg','img/product/md/lg-01.jpg','img/product/lg/clg-01.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'1','img/product/sm/sm-02.jpg','img/product/md/lg-02.jpg','img/product/lg/clg-02.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'1','img/product/sm/sm-03.jpg','img/product/md/lg-03.jpg','img/product/lg/clg-03.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'1','img/product/sm/sm-04.jpg','img/product/md/lg-04.jpg','img/product/lg/clg-04.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'1','img/product/sm/sm-05.jpg','img/product/md/lg-05.jpg','img/product/lg/clg-05.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'1','img/product/sm/sm-06.jpg','img/product/md/lg-06.jpg','img/product/lg/clg-06.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'1','img/product/sm/sm-07.jpg','img/product/md/lg-07.jpg','img/product/lg/clg-07.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'1','img/product/sm/sm-08.jpg','img/product/md/lg-08.jpg','img/product/lg/clg-08.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'2','img/product/sm/sm-014.jpg','img/product/md/lg-014.jpg','img/product/lg/clg-014.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'2','img/product/sm/sm-10.jpg','img/product/md/lg-010.jpg','img/product/lg/clg-010.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'2','img/product/sm/sm-09.jpg','img/product/md/lg-09.jpg','img/product/lg/clg-09.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'2','img/product/sm/sm-011.jpg','img/product/md/lg-011.jpg','img/product/lg/clg-011.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'2','img/product/sm/sm-012.jpg','img/product/md/lg-012.jpg','img/product/lg/clg-012.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'2','img/product/sm/sm-013.jpg','img/product/md/lg-013.jpg','img/product/lg/clg-013.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'2','img/product/sm/sm-015.jpg','img/product/md/lg-015.jpg','img/product/lg/clg-015.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'3','img/product/sm/sm-016.jpg','img/product/md/lg-016.jpg','img/product/lg/clg-016.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'3','img/product/sm/sm-017.jpg','img/product/md/lg-017.jpg','img/product/lg/clg-017.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'3','img/product/sm/sm-018.jpg','img/product/md/lg-018.jpg','img/product/lg/clg-018.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'3','img/product/sm/sm-019.jpg','img/product/md/lg-019.jpg','img/product/lg/clg-019.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'3','img/product/sm/sm-020.jpg','img/product/md/lg-020.jpg','img/product/lg/clg-020.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'4','img/product/sm/sm-021.jpg','img/product/md/lg-021.jpg','img/product/lg/clg-021.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'4','img/product/sm/sm-022.jpg','img/product/md/lg-022.jpg','img/product/lg/clg-022.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'4','img/product/sm/sm-023.jpg','img/product/md/lg-023.jpg','img/product/lg/clg-023.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'4','img/product/sm/sm-024.jpg','img/product/md/lg-024.jpg','img/product/lg/clg-024.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'5','img/product/sm/sm-025.jpg','img/product/md/lg-025.jpg','img/product/lg/clg-025.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'5','img/product/sm/sm-026.jpg','img/product/md/lg-026.jpg','img/product/lg/clg-026.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'5','img/product/sm/sm-027.jpg','img/product/md/lg-027.jpg','img/product/lg/clg-027.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'5','img/product/sm/sm-028.jpg','img/product/md/lg-028.jpg','img/product/lg/clg-028.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'5','img/product/sm/sm-029.jpg','img/product/md/lg-029.jpg','img/product/lg/clg-029.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'6','img/product/sm/sm-030.jpg','img/product/md/lg-030.jpg','img/product/lg/clg-030.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'6','img/product/sm/sm-031.jpg','img/product/md/lg-031.jpg','img/product/lg/clg-031.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'6','img/product/sm/sm-032.jpg','img/product/md/lg-032.jpg','img/product/lg/clg-032.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'6','img/product/sm/sm-033.jpg','img/product/md/lg-033.jpg','img/product/lg/clg-033.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'7','img/product/sm/sm-034.jpg','img/product/md/lg-034.jpg','img/product/lg/clg-034.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'7','img/product/sm/sm-035.jpg','img/product/md/lg-035.jpg','img/product/lg/clg-035.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'7','img/product/sm/sm-036.jpg','img/product/md/lg-036.jpg','img/product/lg/clg-036.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'7','img/product/sm/sm-037.jpg','img/product/md/lg-037.jpg','img/product/lg/clg-037.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'8','img/product/sm/sm-038.jpg','img/product/md/lg-038.jpg','img/product/lg/clg-038.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'8','img/product/sm/sm-039.jpg','img/product/md/lg-039.jpg','img/product/lg/clg-039.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'8','img/product/sm/sm-040.jpg','img/product/md/lg-040.jpg','img/product/lg/clg-040.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'8','img/product/sm/sm-041.jpg','img/product/md/lg-041.jpg','img/product/lg/clg-041.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'8','img/product/sm/sm-042.jpg','img/product/md/lg-042.jpg','img/product/lg/clg-042.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'9','img/product/sm/sm-043.jpg','img/product/md/lg-043.jpg','img/product/lg/clg-043.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'9','img/product/sm/sm-044.jpg','img/product/md/lg-044.jpg','img/product/lg/clg-044.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'9','img/product/sm/sm-045.jpg','img/product/md/lg-045.jpg','img/product/lg/clg-045.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'9','img/product/sm/sm-046.jpg','img/product/md/lg-046.jpg','img/product/lg/clg-046.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'10','img/product/sm/sm-0114.jpg','img/product/md/lg-0114.jpg','img/product/lg/clg-0114.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'10','img/product/sm/sm-0115.jpg','img/product/md/lg-0115.jpg','img/product/lg/clg-0115.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'10','img/product/sm/sm-0116.jpg','img/product/md/lg-0116.jpg','img/product/lg/clg-0116.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'10','img/product/sm/sm-0117.jpg','img/product/md/lg-0117.jpg','img/product/lg/clg-0117.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'11','img/product/sm/sm-0118.jpg','img/product/md/lg-0118.jpg','img/product/lg/clg-0118.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'11','img/product/sm/sm-0119.jpg','img/product/md/lg-0119.jpg','img/product/lg/clg-0119.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'11','img/product/sm/sm-0120.jpg','img/product/md/lg-0120.jpg','img/product/lg/clg-0120.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'11','img/product/sm/sm-0121.jpg','img/product/md/lg-0121.jpg','img/product/lg/clg-0121.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'12','img/product/sm/sm-0122.jpg','img/product/md/lg-0122.jpg','img/product/lg/clg-0122.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'12','img/product/sm/sm-0123.jpg','img/product/md/lg-0123.jpg','img/product/lg/clg-0123.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'12','img/product/sm/sm-0124.jpg','img/product/md/lg-0124.jpg','img/product/lg/clg-0124.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'12','img/product/sm/sm-0125.jpg','img/product/md/lg-0125.jpg','img/product/lg/clg-0125.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'13','img/product/sm/sm-0126.jpg','img/product/md/lg-0126.jpg','img/product/lg/clg-0126.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'13','img/product/sm/sm-0127.jpg','img/product/md/lg-0127.jpg','img/product/lg/clg-0127.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'13','img/product/sm/sm-0128.jpg','img/product/md/lg-0128.jpg','img/product/lg/clg-0128.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'13','img/product/sm/sm-0129.jpg','img/product/md/lg-0129.jpg','img/product/lg/clg-0129.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'14','img/product/sm/sm-0130.jpg','img/product/md/lg-0130.jpg','img/product/lg/clg-0130.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'14','img/product/sm/sm-0131.jpg','img/product/md/lg-0131.jpg','img/product/lg/clg-0131.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'14','img/product/sm/sm-0132.jpg','img/product/md/lg-0132.jpg','img/product/lg/clg-0132.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'14','img/product/sm/sm-0133.jpg','img/product/md/lg-0133.jpg','img/product/lg/clg-0133.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'15','img/product/sm/sm-0134.jpg','img/product/md/lg-0134.jpg','img/product/lg/clg-0134.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'15','img/product/sm/sm-0135.jpg','img/product/md/lg-0135.jpg','img/product/lg/clg-0135.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'15','img/product/sm/sm-0136.jpg','img/product/md/lg-0136.jpg','img/product/lg/clg-0136.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'15','img/product/sm/sm-0137.jpg','img/product/md/lg-0137.jpg','img/product/lg/clg-0137.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'16','img/product/sm/sm-0138.jpg','img/product/md/lg-0138.jpg','img/product/lg/clg-0138.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'16','img/product/sm/sm-0139.jpg','img/product/md/lg-0139.jpg','img/product/lg/clg-0139.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'16','img/product/sm/sm-0140.jpg','img/product/md/lg-0140.jpg','img/product/lg/clg-0140.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'16','img/product/sm/sm-0141.jpg','img/product/md/lg-0141.jpg','img/product/lg/clg-0141.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'17','img/product/sm/sm-047.jpg','img/product/md/lg-047.jpg','img/product/lg/clg-047.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'17','img/product/sm/sm-048.jpg','img/product/md/lg-048.jpg','img/product/lg/clg-048.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'17','img/product/sm/sm-049.jpg','img/product/md/lg-049.jpg','img/product/lg/clg-049.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'17','img/product/sm/sm-050.jpg','img/product/md/lg-050.jpg','img/product/lg/clg-050.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'17','img/product/sm/sm-051.jpg','img/product/md/lg-051.jpg','img/product/lg/clg-051.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'17','img/product/sm/sm-052.jpg','img/product/md/lg-052.jpg','img/product/lg/clg-052.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'17','img/product/sm/sm-053.jpg','img/product/md/lg-053.jpg','img/product/lg/clg-053.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'17','img/product/sm/sm-054.jpg','img/product/md/lg-054.jpg','img/product/lg/clg-054.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'18','img/product/sm/sm-055.jpg','img/product/md/lg-055.jpg','img/product/lg/clg-055.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'18','img/product/sm/sm-056.jpg','img/product/md/lg-056.jpg','img/product/lg/clg-056.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'18','img/product/sm/sm-057.jpg','img/product/md/lg-057.jpg','img/product/lg/clg-057.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'18','img/product/sm/sm-058.jpg','img/product/md/lg-058.jpg','img/product/lg/clg-058.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'18','img/product/sm/sm-059.jpg','img/product/md/lg-059.jpg','img/product/lg/clg-059.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'18','img/product/sm/sm-060.jpg','img/product/md/lg-060.jpg','img/product/lg/clg-060.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'18','img/product/sm/sm-061.jpg','img/product/md/lg-061.jpg','img/product/lg/clg-061.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'19','img/product/sm/sm-062.jpg','img/product/md/lg-062.jpg','img/product/lg/clg-062.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'19','img/product/sm/sm-063.jpg','img/product/md/lg-063.jpg','img/product/lg/clg-063.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'19','img/product/sm/sm-064.jpg','img/product/md/lg-064.jpg','img/product/lg/clg-064.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'19','img/product/sm/sm-065.jpg','img/product/md/lg-065.jpg','img/product/lg/clg-065.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'19','img/product/sm/sm-066.jpg','img/product/md/lg-066.jpg','img/product/lg/clg-066.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'20','img/product/sm/sm-067.jpg','img/product/md/lg-067.jpg','img/product/lg/clg-067.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'20','img/product/sm/sm-068.jpg','img/product/md/lg-068.jpg','img/product/lg/clg-068.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'20','img/product/sm/sm-069.jpg','img/product/md/lg-069.jpg','img/product/lg/clg-069.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'20','img/product/sm/sm-070.jpg','img/product/md/lg-070.jpg','img/product/lg/clg-070.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'20','img/product/sm/sm-071.jpg','img/product/md/lg-071.jpg','img/product/lg/clg-071.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'21','img/product/sm/sm-072.jpg','img/product/md/lg-072.jpg','img/product/lg/clg-072.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'21','img/product/sm/sm-073.jpg','img/product/md/lg-073.jpg','img/product/lg/clg-073.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'21','img/product/sm/sm-074.jpg','img/product/md/lg-074.jpg','img/product/lg/clg-074.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'21','img/product/sm/sm-075.jpg','img/product/md/lg-075.jpg','img/product/lg/clg-075.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'22','img/product/sm/sm-076.jpg','img/product/md/lg-076.jpg','img/product/lg/clg-076.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'22','img/product/sm/sm-077.jpg','img/product/md/lg-077.jpg','img/product/lg/clg-077.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'22','img/product/sm/sm-078.jpg','img/product/md/lg-078.jpg','img/product/lg/clg-078.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'22','img/product/sm/sm-079.jpg','img/product/md/lg-079.jpg','img/product/lg/clg-079.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'23','img/product/sm/sm-080.jpg','img/product/md/lg-080.jpg','img/product/lg/clg-080.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'23','img/product/sm/sm-081.jpg','img/product/md/lg-081.jpg','img/product/lg/clg-081.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'23','img/product/sm/sm-082.jpg','img/product/md/lg-082.jpg','img/product/lg/clg-082.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'23','img/product/sm/sm-083.jpg','img/product/md/lg-083.jpg','img/product/lg/clg-083.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'23','img/product/sm/sm-084.jpg','img/product/md/lg-084.jpg','img/product/lg/clg-084.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'24','img/product/sm/sm-085.jpg','img/product/md/lg-085.jpg','img/product/lg/clg-085.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'24','img/product/sm/sm-086.jpg','img/product/md/lg-086.jpg','img/product/lg/clg-086.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'24','img/product/sm/sm-087.jpg','img/product/md/lg-087.jpg','img/product/lg/clg-087.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'24','img/product/sm/sm-088.jpg','img/product/md/lg-088.jpg','img/product/lg/clg-088.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'24','img/product/sm/sm-089.jpg','img/product/md/lg-089.jpg','img/product/lg/clg-089.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'25','img/product/sm/sm-090.jpg','img/product/md/lg-090.jpg','img/product/lg/clg-090.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'25','img/product/sm/sm-091.jpg','img/product/md/lg-091.jpg','img/product/lg/clg-091.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'25','img/product/sm/sm-092.jpg','img/product/md/lg-092.jpg','img/product/lg/clg-092.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'25','img/product/sm/sm-093.jpg','img/product/md/lg-093.jpg','img/product/lg/clg-093.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'26','img/product/sm/sm-094.jpg','img/product/md/lg-094.jpg','img/product/lg/clg-094.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'26','img/product/sm/sm-095.jpg','img/product/md/lg-095.jpg','img/product/lg/clg-095.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'26','img/product/sm/sm-096.jpg','img/product/md/lg-096.jpg','img/product/lg/clg-096.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'26','img/product/sm/sm-097.jpg','img/product/md/lg-097.jpg','img/product/lg/clg-097.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'27','img/product/sm/sm-098.jpg','img/product/md/lg-098.jpg','img/product/lg/clg-098.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'27','img/product/sm/sm-099.jpg','img/product/md/lg-099.jpg','img/product/lg/clg-099.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'27','img/product/sm/sm-0100.jpg','img/product/md/lg-0100.jpg','img/product/lg/clg-0100.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'27','img/product/sm/sm-0101.jpg','img/product/md/lg-0101.jpg','img/product/lg/clg-0101.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'28','img/product/sm/sm-0102.jpg','img/product/md/lg-0102.jpg','img/product/lg/clg-0102.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'28','img/product/sm/sm-0103.jpg','img/product/md/lg-0103.jpg','img/product/lg/clg-0103.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'28','img/product/sm/sm-0104.jpg','img/product/md/lg-0104.jpg','img/product/lg/clg-0104.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'28','img/product/sm/sm-0105.jpg','img/product/md/lg-0105.jpg','img/product/lg/clg-0105.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'29','img/product/sm/sm-0106.jpg','img/product/md/lg-0106.jpg','img/product/lg/clg-0106.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'29','img/product/sm/sm-0107.jpg','img/product/md/lg-0107.jpg','img/product/lg/clg-0107.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'29','img/product/sm/sm-0108.jpg','img/product/md/lg-0108.jpg','img/product/lg/clg-0108.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'29','img/product/sm/sm-0109.jpg','img/product/md/lg-0109.jpg','img/product/lg/clg-0109.jpg');

	INSERT INTO bird_ring_pic VALUE(NULL,'30','img/product/sm/sm-0110.jpg','img/product/md/lg-0110.jpg','img/product/lg/clg-0110.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'30','img/product/sm/sm-0111.jpg','img/product/md/lg-0111.jpg','img/product/lg/clg-0111.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'30','img/product/sm/sm-0112.jpg','img/product/md/lg-0112.jpg','img/product/lg/clg-0112.jpg');
	INSERT INTO bird_ring_pic VALUE(NULL,'30','img/product/sm/sm-0113.jpg','img/product/md/lg-0113.jpg','img/product/lg/clg-0113.jpg');


#==============================================#用户信息表===================================================================#

	CREATE  TABLE  bird_user(                   #用户信息表
		uid  INT  PRIMARY  KEY  NOT  NULL  AUTO_INCREMENT,#   用户ID
		uname      VARCHAR(32),#用户昵称
		upwd       VARCHAR(32),#用户密码
		email      VARCHAR(32),#用户邮箱
		phone      VARCHAR(32),#用户手机号
		user_name  VARCHAR(32),#用户真实姓名
		gender     INT,        #用户性别
		avatar     VARCHAR(32) #用户头像
	);

	INSERT INTO bird_user VALUE(NULL,'dingding','123456','123456@qq.com','13265458523','NULL','1','01.jpg');
	INSERT INTO bird_user VALUE(NULL,'dongdong','123','123@qq.com','13265456523','NULL','0','02.jpg');
	INSERT INTO bird_user VALUE(NULL,'dangdang','456','456@qq.com','13265658523','NULL','0','03.jpg');
	INSERT INTO bird_user VALUE(NULL,'dindin','234','234@qq.com','13266558523','NULL','1','04.jpg');
	INSERT INTO bird_user VALUE(NULL,'didi','345','345@qq.com','13265668523','NULL','0','05.jpg');

#==============================================#用户购物车列表===================================================================#

	CREATE   TABLE  bird_shopping_cart(         #用户购物车列表
		cid  INT  PRIMARY  KEY  AUTO_INCREMENT,  #购物车列表ID
		user_id   INT,                           #用户编号
		pro_id    INT,                              #商品编号
		count     INT
	);

	INSERT INTO bird_shopping_cart VALUE(NULL,1,1,1);

#==============================================#商品轮播图列表===============================================================#
	CREATE   TABLE   bird_index_carousel(       #商品轮播图列表
		cid   INT  PRIMARY  KEY  AUTO_INCREMENT,  #轮播图ID
		img	    VARCHAR(128),                     #图片路径
		title   VARCHAR(128),                     #图片描述
		href    VARCHAR(128),                     #图片链接
		img3    VARCHAR(128),
		img4    VARCHAR(128),
		img5    VARCHAR(128),
		img1    VARCHAR(128),
		img2    VARCHAR(128)
	);

	INSERT INTO bird_index_carousel VALUE(NULL,'img/banner/banner-01.jpg','轮播图广告01','product.html','img/info/1/1-01.jpg','img/info/1/1-02.jpg','img/info/1/1-03.jpg','img/info/diy/diy_1.jpg','img/banner/st_1.jpg');
	INSERT INTO bird_index_carousel VALUE(NULL,'img/banner/banner-02.jpg','轮播图广告02','product.html','img/info/2/2-01.jpg','img/info/2/2-02.jpg','img/info/2/2-03.jpg','img/info/diy/diy_2.jpg','img/banner/st_2.jpg');
	INSERT INTO bird_index_carousel VALUE(NULL,'img/banner/banner-03.jpg','轮播图广告03','product.html','img/info/3/3-01.jpg','img/info/3/3-02.jpg','img/info/3/3-03.jpg','img/info/diy/diy_3.jpg','img/banner/st_3.jpg');
	INSERT INTO bird_index_carousel VALUE(NULL,'img/banner/banner-04.jpg','轮播图广告04','product.html','img/info/4/4-01.jpg','img/info/4/4-02.jpg','img/info/4/4-03.jpg',null,'img/banner/st_4.jpg');
	INSERT INTO bird_index_carousel VALUE(NULL,'img/banner/banner-05.jpg','轮播图广告05','product.html','img/info/5/5-01.jpg','img/info/5/5-02.jpg','img/info/5/5-03.jpg',null,null);

#=============================================#首页商品栏目表=============================================================#

	CREATE   TABLE   bird_index_product(        #首页商品栏目表
		pid   INT  PRIMARY  KEY  AUTO_INCREMENT, #栏目表ID
		title       VARCHAR(128),                #商品标题
		price       INT,                #商品价格
		sold        INT,                #商品售出
		Comments    INT,                #商品评论
		pic1         VARCHAR(128),                #图片1
		pic2         VARCHAR(128),                #图片2 
		href        VARCHAR(128),                #商品链接
		dedid         INT,
		seqid         INT,
		saleid        INT
	);

	INSERT INTO bird_index_product VALUE(NULL,'点滴时光','6570','3263','250','img/product/pic/product-01.jpg','img/product/pic/product-02.jpg','#','3','3','3');
	INSERT INTO bird_index_product VALUE(NULL,'爱河','4040','2565','307','img/product/pic/product-03.jpg','img/product/pic/product-04.jpg','#','3','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'聆听','6690','3544','213','img/product/pic/product-05.jpg','img/product/pic/product-06.jpg','#','3','3','3');
	INSERT INTO bird_index_product VALUE(NULL,'纯境','4810','5348','274','img/product/pic/product-07.jpg','img/product/pic/product-08.jpg','#','3','3','3');
	INSERT INTO bird_index_product VALUE(NULL,'灵境','7280','2495','133','img/product/pic/product-09.jpg','img/product/pic/product-010.jpg','#','3','3','3');
	INSERT INTO bird_index_product VALUE(NULL,'情丝','3780','1170','55','img/product/pic/product-011.jpg','img/product/pic/product-012.jpg','#','3','3','3');
	INSERT INTO bird_index_product VALUE(NULL,'相护','5500','147','21','img/product/pic/product-013.jpg','img/product/pic/product-014.jpg','#','3','3','3');
	INSERT INTO bird_index_product VALUE(NULL,'依偎','6430','1644','133','img/product/pic/product-015.jpg','img/product/pic/product-016.jpg','#','3','3','3');
	INSERT INTO bird_index_product VALUE(NULL,'天籁','7450','1375','122','img/product/pic/product-017.jpg','img/product/pic/product-018.jpg','#','3','3','3');

	INSERT INTO bird_index_product VALUE(NULL,'北极光 月光女王','32500','2460','540','img/product/pic/product-019.jpg','img/product/pic/product-020.jpg','#','2','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'Energy能量','36200','1353','467','img/product/pic/product-021.jpg','img/product/pic/product-022.jpg','#','2','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'倾心','4700','5900','249','img/product/pic/product-023.jpg','img/product/pic/product-024.jpg','#','2','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'拥暖Ⅱ','10240','7305','588','img/product/pic/product-025.jpg','img/product/pic/product-026.jpg','#','2','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'永恒之约Ⅱ','5500','11673','829','img/product/pic/product-027.jpg','img/product/pic/product-028.jpg','#','2','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'北极光 森林女王','29600','700','190','img/product/pic/product-029.jpg','img/product/pic/product-030.jpg','#','2','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'永恒之约','21700','9432','788','img/product/pic/product-031.jpg','img/product/pic/product-032.jpg','#','2','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'沁心','21500','12','0','img/product/pic/product-033.jpg','img/product/pic/product-034.jpg','#','2','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'芬芳','4199','14','13','img/product/pic/product-035.jpg','img/product/pic/product-036.jpg','#','2','2','2');


	INSERT INTO bird_index_product VALUE(NULL,'Sparkle耀眼','5400','1175','199','img/product/pic/product-037.jpg','img/product/pic/product-038.jpg','#','4','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'Focus焦点','4200','494','72','img/product/pic/product-039.jpg','img/product/pic/product-040.jpg','#','4','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'群花绮丽','3890','679','18','img/product/pic/product-041.jpg','img/product/pic/product-042.jpg','#','4','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'愿望','4980','151','21','img/product/pic/product-043.jpg','img/product/pic/product-044.jpg','#','4','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'浪漫月半弯','7990','78','10','img/product/pic/product-045.jpg','img/product/pic/product-046.jpg','#','4','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'星月','3550','17','0','img/product/pic/product-047.jpg','img/product/pic/product-048.jpg','#','4','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'关爱之心','30650','643','12','img/product/pic/product-049.jpg','img/product/pic/product-050.jpg','#','4','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'美丽年华','2780','404','11','img/product/pic/product-051.jpg','img/product/pic/product-052.jpg','#','4','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'热气球（耳钉）','1680','19','0','img/product/pic/product-053.jpg','img/product/pic/product-054.jpg','#','4','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'月牙','1980','62','0','img/product/pic/product-055.jpg','img/product/pic/product-056.jpg','#','4','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'蝶语','2600','38','0','img/product/pic/product-057.jpg','img/product/pic/product-058.jpg','#','4','2','2');
	INSERT INTO bird_index_product VALUE(NULL,'倾慕恋','2990','400','17','img/product/pic/product-059.jpg','img/product/pic/product-060.jpg','#','4','2','2');

#========================================= #商品轮播图列表======================================================================#

	CREATE   TABLE   bird_argument_pic(       #商品轮播图列表
		cid   INT  PRIMARY  KEY  AUTO_INCREMENT,  #轮播图ID
		gid    INT,                              #id值
		img	    VARCHAR(128)                     #图片路径

	);

	INSERT INTO bird_argument_pic VALUE(NULL,1,'img/product/pro/with-01.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,1,'img/product/pro/with-02.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,1,'img/product/pro/with-03.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,1,'img/product/pro/with-04.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,1,'img/product/pro/with-05.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,1,'img/product/pro/with-06.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,2,'img/product/pro/with-07.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,2,'img/product/pro/with-08.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,2,'img/product/pro/with-09.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,2,'img/product/pro/with-010.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,2,'img/product/pro/with-011.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,2,'img/product/pro/with-012.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,3,'img/product/pro/with-013.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,3,'img/product/pro/with-014.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,3,'img/product/pro/with-015.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,3,'img/product/pro/with-016.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,3,'img/product/pro/with-017.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,3,'img/product/pro/with-018.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,3,'img/product/pro/with-019.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,4,'img/product/pro/with-020.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,4,'img/product/pro/with-021.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,4,'img/product/pro/with-022.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,4,'img/product/pro/with-023.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,4,'img/product/pro/with-024.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,5,'img/product/pro/with-025.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,5,'img/product/pro/with-026.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,5,'img/product/pro/with-027.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,6,'img/product/pro/with-028.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,6,'img/product/pro/with-029.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,6,'img/product/pro/with-030.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,7,'img/product/pro/with-031.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,7,'img/product/pro/with-032.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,7,'img/product/pro/with-033.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,7,'img/product/pro/with-034.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,8,'img/product/pro/with-035.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,8,'img/product/pro/with-036.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,8,'img/product/pro/with-037.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,8,'img/product/pro/with-038.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,8,'img/product/pro/with-039.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,9,'img/product/pro/with-040.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,9,'img/product/pro/with-041.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,9,'img/product/pro/with-042.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,9,'img/product/pro/with-043.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,9,'img/product/pro/with-044.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,9,'img/product/pro/with-045.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,10,'img/product/pro/with-0114.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,10,'img/product/pro/with-0115.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,10,'img/product/pro/with-0116.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,10,'img/product/pro/with-0117.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,11,'img/product/pro/with-0118.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,11,'img/product/pro/with-0119.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,11,'img/product/pro/with-0120.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,11,'img/product/pro/with-0121.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,12,'img/product/pro/with-0122.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,12,'img/product/pro/with-0123.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,12,'img/product/pro/with-0124.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,12,'img/product/pro/with-0125.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,13,'img/product/pro/with-0126.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,13,'img/product/pro/with-0127.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,13,'img/product/pro/with-0128.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,13,'img/product/pro/with-0129.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,14,'img/product/pro/with-0130.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,14,'img/product/pro/with-0131.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,14,'img/product/pro/with-0132.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,14,'img/product/pro/with-0133.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,15,'img/product/pro/with-0134.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,15,'img/product/pro/with-0135.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,15,'img/product/pro/with-0136.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,15,'img/product/pro/with-0137.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,16,'img/product/pro/with-0138.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,16,'img/product/pro/with-0139.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,16,'img/product/pro/with-0140.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,16,'img/product/pro/with-0141.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,17,'img/product/pro/with-044.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,17,'img/product/pro/with-045.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,17,'img/product/pro/with-046.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,17,'img/product/pro/with-047.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,17,'img/product/pro/with-048.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,17,'img/product/pro/with-049.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,17,'img/product/pro/with-050.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,18,'img/product/pro/with-051.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,18,'img/product/pro/with-052.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,18,'img/product/pro/with-053.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,18,'img/product/pro/with-054.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,19,'img/product/pro/with-055.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,19,'img/product/pro/with-056.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,19,'img/product/pro/with-057.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,19,'img/product/pro/with-058.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,19,'img/product/pro/with-059.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,19,'img/product/pro/with-060.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,20,'img/product/pro/with-061.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,20,'img/product/pro/with-062.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,20,'img/product/pro/with-063.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,20,'img/product/pro/with-064.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,20,'img/product/pro/with-065.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,20,'img/product/pro/with-066.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,21,'img/product/pro/with-067.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,21,'img/product/pro/with-068.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,21,'img/product/pro/with-069.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,21,'img/product/pro/with-070.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,22,'img/product/pro/with-071.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,22,'img/product/pro/with-072.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,22,'img/product/pro/with-073.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,22,'img/product/pro/with-074.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,22,'img/product/pro/with-075.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,22,'img/product/pro/with-076.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,22,'img/product/pro/with-077.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,23,'img/product/pro/with-078.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,23,'img/product/pro/with-080.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,23,'img/product/pro/with-081.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,23,'img/product/pro/with-082.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,23,'img/product/pro/with-083.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,23,'img/product/pro/with-084.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,24,'img/product/pro/with-085.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,24,'img/product/pro/with-086.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,24,'img/product/pro/with-087.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,24,'img/product/pro/with-088.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,24,'img/product/pro/with-089.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,25,'img/product/pro/with-090.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,25,'img/product/pro/with-091.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,25,'img/product/pro/with-092.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,25,'img/product/pro/with-093.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,26,'img/product/pro/with-094.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,26,'img/product/pro/with-095.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,26,'img/product/pro/with-096.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,26,'img/product/pro/with-097.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,27,'img/product/pro/with-098.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,27,'img/product/pro/with-099.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,27,'img/product/pro/with-0100.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,27,'img/product/pro/with-0101.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,28,'img/product/pro/with-0102.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,28,'img/product/pro/with-0103.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,28,'img/product/pro/with-0104.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,28,'img/product/pro/with-0105.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,29,'img/product/pro/with-0106.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,29,'img/product/pro/with-0107.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,29,'img/product/pro/with-0108.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,29,'img/product/pro/with-0109.jpg');

	INSERT INTO bird_argument_pic VALUE(NULL,30,'img/product/pro/with-0110.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,30,'img/product/pro/with-0111.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,30,'img/product/pro/with-0112.jpg');
	INSERT INTO bird_argument_pic VALUE(NULL,30,'img/product/pro/with-0113.jpg');



#====================================================================================================#

