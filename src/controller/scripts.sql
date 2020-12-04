/*
 * Author:  Gustavo
 */

/*Criação do Banco de Dados */
create database "MINHA_OFICINA"
    ENCODING "UTF-8"
    CONNECTION LIMIT -1;

/*Criação da Tabela Peça */
create table tb_peca(
	id			serial,
	nome			varchar(60) not null,
	quantidade 		integer,
	valorunitario           double precision,
	fg_ativo		integer,

	constraint pk_peca_id primary key(id)
);

/*Criação da Tabela Cliente */
create table tb_cliente(
	id			serial,
	nome			varchar(60) not null,
	cpf 			varchar(14),
	telefone		varchar(13),
	email			varchar(60),
	fg_ativo		integer,

	constraint pk_cliente_id primary key(id)
);

/*Criação da Tabela Fornecedor */
create table tb_fornecedor(
	id			serial,
	nome			varchar(60) not null,
	cnpj 			varchar(18),
	telefone		varchar(12),
	email			varchar(60),
	fg_ativo		integer,

	constraint pk_fornecedor_id primary key(id)
);


/*Carga para Tabela Cliente */
INSERT INTO "tb_cliente" (nome,cpf,telefone,email,fg_ativo) VALUES ('Cruz','177.412.504-37','99590-0116','vulputate.ullamcorper@nonummy.net','1'),('Hall','644.389.961-30','91614-2720','risus@Crasdolordolor.ca','1'),('Velma','003.461.548-66','91499-2488','parturient.montes@etultricesposuere.edu','1'),('Ciaran','069.826.286-81','99283-2992','at.libero.Morbi@dictum.org','1'),('Graiden','144.410.659-55','90260-3766','nisl.arcu@Proinultrices.net','1'),('Tate','266.503.342-19','97516-0533','Cum.sociis@Duisrisusodio.co.uk','1'),('Bianca','263.796.516-23','92095-1937','lorem@acmetus.net','1'),('Nelle','235.548.089-38','99955-5282','pede.Cum.sociis@turpis.co.uk','1'),('Cadman','317.078.030-30','91576-0924','imperdiet@duilectus.ca','1'),('Quail','871.440.746-86','94291-8462','a.arcu.Sed@Loremipsum.edu','1');
INSERT INTO "tb_cliente" (nome,cpf,telefone,email,fg_ativo) VALUES ('Lani','741.223.963-41','90628-3173','purus@Integer.ca','1'),('Xaviera','036.411.896-09','91735-9089','netus.et.malesuada@cursus.ca','1'),('Ignatius','349.904.126-24','93548-8367','eu@consequat.co.uk','1'),('Karina','935.476.861-88','98213-4022','gravida.sit.amet@nibh.edu','1'),('Sebastian','667.710.177-72','91840-5156','Phasellus.fermentum@odiosempercursus.org','1'),('Alexandra','225.752.647-02','90051-5256','metus.In@nequetellusimperdiet.ca','1'),('Rosalyn','282.765.504-45','90075-1294','odio.Nam@quis.ca','1'),('Winter','589.960.389-86','93013-9393','non.magna.Nam@euismodet.co.uk','1'),('Leilani','124.850.402-09','99912-9779','sagittis.felis@necorciDonec.edu','1'),('Karina','461.580.807-36','98214-1957','metus.Aenean.sed@luctusfelis.net','1');
INSERT INTO "tb_cliente" (nome,cpf,telefone,email,fg_ativo) VALUES ('Glenna','936.445.729-81','97674-0004','Sed@ipsum.net','1'),('Abra','375.420.792-19','90521-6244','luctus@justoProin.net','1'),('Jacob','907.108.853-13','94780-4399','dictum@sitamet.co.uk','1'),('Brooke','314.629.856-53','95346-9974','Morbi.quis@a.com','1'),('Duncan','776.606.010-79','96455-4639','dui@Proindolor.org','1'),('Odysseus','223.440.715-29','98658-0254','nec@nuncsitamet.ca','1'),('Velma','349.936.702-30','95241-4312','ultrices.Vivamus@ipsum.org','1'),('Dora','124.049.944-36','94046-9229','Aliquam.nisl.Nulla@rhoncusProin.edu','1'),('Jolene','430.926.013-57','91242-2730','Nunc.ac@Phaselluselit.net','1'),('Adam','222.045.630-76','99017-3907','diam.eu.dolor@tinciduntadipiscingMauris.co.uk','1');
INSERT INTO "tb_cliente" (nome,cpf,telefone,email,fg_ativo) VALUES ('Peter','536.009.424-13','99593-0296','luctus.ipsum@malesuadafamesac.co.uk','1'),('Fleur','298.167.557-69','90457-5142','lorem.lorem@habitantmorbitristique.org','1'),('Alea','271.165.968-27','91998-8143','in.aliquet.lobortis@fermentum.com','1'),('Shelley','366.373.702-52','94569-1919','ut.pharetra.sed@rhoncusid.co.uk','1'),('Armando','155.776.223-81','94863-9827','metus@augue.org','1'),('Kadeem','291.116.916-60','91784-4221','Phasellus@euismodurna.ca','1'),('Buckminster','471.003.886-03','95704-2269','malesuada.fames@nectellus.ca','1'),('Eagan','497.871.040-06','96656-9113','aliquam.eros.turpis@eleifendvitaeerat.com','1'),('Timothy','026.019.355-30','99374-3348','felis.Donec.tempor@pedeCrasvulputate.com','1'),('Marvin','925.503.232-34','97162-8084','Cum.sociis.natoque@sit.org','1');
INSERT INTO "tb_cliente" (nome,cpf,telefone,email,fg_ativo) VALUES ('Uriel','248.989.857-24','91786-4440','volutpat.ornare.facilisis@in.co.uk','1'),('Cora','052.489.756-48','94080-6448','Cras.interdum.Nunc@vitae.org','1'),('Damon','658.757.508-67','99792-4960','egestas.a@dolorFusce.org','1'),('Davis','358.694.663-04','90710-4699','Nulla@mipede.org','1'),('Hanna','174.865.779-24','95621-2507','augue@Phasellusfermentumconvallis.co.uk','1'),('Hedda','573.385.987-84','91977-6735','ac.facilisis.facilisis@nequetellusimperdiet.co.uk','1'),('Lenore','463.877.970-12','93307-6022','risus.Donec@Curabituregestas.org','1'),('Martina','730.523.104-11','97676-6291','laoreet@vulputatenisi.org','1'),('Cailin','032.097.901-24','90531-8275','volutpat.ornare@diamProin.com','1'),('Salvador','673.018.538-48','94818-6023','eu@dapibusid.net','1');
INSERT INTO "tb_cliente" (nome,cpf,telefone,email,fg_ativo) VALUES ('Mary','178.721.529-90','91906-0499','odio.semper@arcuiaculisenim.ca','1'),('Jonas','769.874.870-15','90124-9300','Sed.nec@Curabituregestas.net','1'),('Lavinia','812.936.988-45','92055-3665','faucibus.orci@mauris.edu','1'),('Hadassah','927.767.459-31','90183-9619','Aliquam.ornare@magna.net','1'),('Dylan','977.604.344-29','92136-5982','magnis@idrisus.net','1'),('Dale','518.212.904-53','92119-9576','elementum.dui@acfermentumvel.net','1'),('Lars','928.472.993-19','98699-4089','enim.gravida@etnetus.ca','1'),('Naomi','298.266.239-61','93586-3550','sapien.molestie.orci@fringillacursuspurus.ca','1'),('David','727.978.149-40','98365-7715','lorem@fermentumarcu.co.uk','1'),('Ursa','485.106.754-30','93472-9291','Phasellus@eu.net','1');
INSERT INTO "tb_cliente" (nome,cpf,telefone,email,fg_ativo) VALUES ('Brenden','244.517.782-04','94877-0049','vel@Sedmolestie.org','1'),('Skyler','492.788.309-85','99222-0163','magna@Quisque.net','1'),('Cole','213.150.340-94','97131-8563','montes.nascetur.ridiculus@interdum.com','1'),('Ila','438.661.371-92','99621-7429','lacus.vestibulum@nec.ca','1'),('Whoopi','831.005.254-05','97338-6792','sociis.natoque@enimnectempus.com','1'),('Mallory','627.772.969-89','94488-8097','placerat.augue@libero.org','1'),('Declan','156.652.452-63','91875-0804','nulla@lobortismauris.co.uk','1'),('Craig','599.787.950-96','93980-1547','lacus@Proin.co.uk','1'),('Aubrey','831.276.377-87','95107-7149','In.scelerisque@nuncsed.net','1'),('Griffin','395.727.418-53','92520-6513','eu.eleifend.nec@semPellentesqueut.co.uk','1');
INSERT INTO "tb_cliente" (nome,cpf,telefone,email,fg_ativo) VALUES ('Omar','964.495.749-00','97522-8204','est.ac@Inornaresagittis.org','1'),('Justina','281.788.865-92','93865-9258','aliquet.sem@Nullamsuscipit.edu','1'),('Ria','058.162.581-67','96679-3782','sit@Utnec.edu','1'),('Dante','683.648.938-15','90295-8656','lacinia@semper.ca','1'),('Kyla','695.694.920-19','90690-3304','pellentesque@mauris.edu','1'),('Melyssa','190.508.946-50','99267-1986','eu.nulla@arcu.ca','1'),('Hyatt','919.695.730-13','92009-4848','eget.magna@fringillaDonecfeugiat.edu','1'),('Nasim','975.747.759-16','98295-9567','pede.nec.ante@molestiearcuSed.edu','1'),('Noelle','397.588.530-65','92881-0717','libero@orciUt.ca','1'),('Allen','000.225.994-09','92842-0542','tellus.sem@magna.co.uk','1');
INSERT INTO "tb_cliente" (nome,cpf,telefone,email,fg_ativo) VALUES ('Sonya','460.502.445-61','94122-3230','lectus.a@id.org','1'),('Keiko','897.275.852-65','94308-7508','ante.dictum.mi@sociisnatoquepenatibus.ca','1'),('Upton','463.971.099-47','91247-8221','ornare.egestas.ligula@pharetraNam.ca','1'),('Gabriel','635.941.467-60','99395-2228','neque.sed.dictum@metusIn.edu','1'),('Holly','517.086.779-51','92122-2389','neque.vitae@aliquetmagna.co.uk','1'),('Reese','976.315.928-79','90648-5464','ullamcorper@Sedeueros.org','1'),('Stone','263.771.425-00','99072-9049','Aenean@DonecegestasAliquam.ca','1'),('Phelan','966.732.552-17','94202-3060','at@Donecnon.com','1'),('Ivan','047.598.737-39','95400-8122','Nulla@sitametorci.com','1'),('Marcia','927.617.361-52','95246-5981','ut.aliquam@Suspendisse.co.uk','1');
INSERT INTO "tb_cliente" (nome,cpf,telefone,email,fg_ativo) VALUES ('Quin','453.913.218-74','96336-3649','ut.dolor.dapibus@malesuadautsem.org','1'),('Hakeem','143.474.248-98','98290-6352','eu@Fusce.org','1'),('Anika','850.604.668-89','93190-5598','at@aptenttacitisociosqu.org','1'),('Doris','578.596.782-53','91861-2041','magna@maurisipsum.co.uk','1'),('Chiquita','658.227.780-34','93374-4050','sapien.cursus.in@risusDonec.edu','1'),('Hedley','548.163.405-87','99727-7038','diam.eu.dolor@duiquisaccumsan.com','1'),('Kelsie','809.605.554-56','91044-1802','Donec.sollicitudin@sit.ca','1'),('Reed','468.083.693-13','95208-1460','quis.turpis@sagittisDuisgravida.org','1'),('Moana','365.024.128-89','97726-0988','Nullam.suscipit.est@Donecvitae.org','1'),('Sage','460.027.262-50','94485-1363','tempus.mauris.erat@Proineget.net','1');

/*Carga para Tabela Fornecedor */
INSERT INTO "tb_fornecedor" (nome,cnpj,telefone,email,fg_ativo) VALUES ('Quisque Tincidunt Pede Limited','47.343.075/3448-71','81 6955-0747','purus.sapien@arcuVestibulum.co.uk','1'),('Donec Est Limited','32.682.926/4514-51','50 3582-0812','pede.Cras@egetvariusultrices.com','1'),('Lobortis Risus LLC','81.518.468/0742-18','94 1071-4757','venenatis.vel@nibhQuisquenonummy.co.uk','1'),('Tincidunt Associates','36.724.812/0531-20','17 3021-5445','sed.hendrerit@sodalesMaurisblandit.org','1'),('Orci Sem Foundation','29.327.005/4999-81','88 0661-8090','montes@tincidunt.edu','1'),('Pellentesque Eget Dictum LLC','63.159.129/9805-80','43 9312-6128','adipiscing.ligula@quisarcu.com','1'),('Nisi Cum LLP','36.210.664/3246-78','88 5023-7895','arcu@ridiculusmus.org','1'),('Magna LLC','93.015.715/8172-64','62 4717-3323','vulputate.lacus@in.edu','1'),('Sed Associates','63.575.802/8670-92','43 1068-0591','quam.elementum.at@euismodacfermentum.org','1'),('Orci Tincidunt Adipiscing Incorporated','09.146.990/1384-02','40 1271-4689','aliquet.nec.imperdiet@senectuset.co.uk','1');
INSERT INTO "tb_fornecedor" (nome,cnpj,telefone,email,fg_ativo) VALUES ('Non Massa Non Inc.','34.999.869/2270-58','09 1590-4533','lorem.ut@eu.ca','1'),('Neque Venenatis Corporation','72.191.198/2976-38','48 5665-7342','at.libero.Morbi@egestas.net','1'),('Erat Nonummy Institute','21.909.949/5649-03','15 8919-2833','Aliquam.ultrices.iaculis@facilisis.com','1'),('Id Company','57.183.934/3487-24','57 6593-1213','Aliquam.erat@Nullamsuscipitest.net','1'),('Tellus PC','23.272.786/9028-60','52 7142-3138','magna@Crasdictum.net','1'),('Vivamus Corp.','78.338.355/1114-33','66 7526-2398','tincidunt.pede.ac@etultricesposuere.org','1'),('Phasellus Ornare Fusce PC','64.410.504/8870-43','20 8110-8986','sem.semper@vel.com','1'),('Et Arcu Consulting','60.130.471/6351-90','68 7219-6342','libero.lacus@in.com','1'),('Eu Consulting','67.319.251/6669-05','53 0709-2259','pellentesque.a.facilisis@leo.edu','1'),('Mi Incorporated','91.164.666/0421-95','12 7250-0582','lectus.ante.dictum@Crasvulputatevelit.co.uk','1');
INSERT INTO "tb_fornecedor" (nome,cnpj,telefone,email,fg_ativo) VALUES ('Nec Mollis LLC','39.295.316/5403-89','95 7233-6347','ad.litora.torquent@ametdiam.ca','1'),('Erat Corp.','61.255.850/5145-33','70 2996-2890','laoreet.posuere.enim@eratsemper.edu','1'),('Sit Incorporated','95.665.837/8182-61','66 8217-1369','nec@scelerisquemollis.ca','1'),('Cras Ltd','08.888.088/4818-19','40 2621-6150','mi.fringilla.mi@magnaa.ca','1'),('Tincidunt Consulting','08.173.909/4327-70','12 1811-8874','magna.Lorem@Morbiaccumsan.co.uk','1'),('Non Nisi Aenean Inc.','26.639.520/0797-01','15 3743-6883','vulputate.dui@cursusNunc.com','1'),('Maecenas Libero Est Limited','82.240.281/9146-85','06 3521-1791','pharetra.nibh.Aliquam@consectetuer.co.uk','1'),('Ipsum Dolor Corp.','62.752.207/9320-11','77 2047-1230','non@quamquisdiam.org','1'),('Vehicula Aliquet Corp.','81.735.167/6345-07','21 0662-1476','at@adipiscingelit.org','1'),('Interdum Feugiat Corporation','39.943.611/8693-21','15 5637-4591','nisi.Aenean.eget@odioNaminterdum.co.uk','1');
INSERT INTO "tb_fornecedor" (nome,cnpj,telefone,email,fg_ativo) VALUES ('Vivamus Sit Amet Corporation','02.167.159/6133-11','30 2535-3155','elementum@necmollisvitae.com','1'),('Sit PC','06.451.829/2461-51','80 7149-5548','vestibulum.neque@pharetra.co.uk','1'),('Semper Cursus Ltd','19.142.662/6966-27','02 7548-0757','vitae.diam@blanditviverra.net','1'),('Nulla Magna PC','25.692.607/0975-22','59 9732-9851','a.purus.Duis@ultriciesornareelit.ca','1'),('Adipiscing Consulting','60.280.158/0827-16','40 8372-7976','cursus.non@vehiculaaliquet.edu','1'),('Vitae Sodales Nisi Foundation','98.262.251/8524-85','38 3424-7676','Sed@necmaurisblandit.com','1'),('Urna Vivamus Molestie Ltd','02.841.126/6048-41','90 8134-0104','in@nullaante.org','1'),('Curabitur Sed Tortor Foundation','85.838.344/1124-42','81 2659-5281','nisi.a.odio@egetodio.edu','1'),('Elementum Lorem LLC','23.678.104/0254-08','50 8571-0597','Ut.nec.urna@consequat.ca','1'),('Amet Metus LLP','57.049.324/2299-60','81 3802-7741','elit.sed.consequat@purus.edu','1');
INSERT INTO "tb_fornecedor" (nome,cnpj,telefone,email,fg_ativo) VALUES ('Pede Ac PC','85.748.885/4936-67','17 1517-8069','Vestibulum@nuncInat.co.uk','1'),('Condimentum Donec At Corporation','20.793.275/9894-72','59 1096-2624','ultricies.ligula@Fuscefermentumfermentum.com','1'),('Dapibus Quam Quis Company','76.231.116/6086-73','19 1272-7332','malesuada.augue@et.org','1'),('Enim Suspendisse Aliquet Institute','32.849.073/0466-63','93 9160-3597','magna.Duis.dignissim@necanteblandit.com','1'),('Sit Amet LLC','58.292.984/4361-68','37 1835-2043','massa@scelerisque.net','1'),('Morbi Institute','13.021.093/7659-42','62 5451-0874','id@erat.org','1'),('Nec Associates','24.192.920/9573-90','16 6962-3846','enim.Etiam.imperdiet@Donecfelisorci.com','1'),('Libero Corp.','47.260.350/0350-43','72 7883-0020','imperdiet.ornare@etmalesuada.org','1'),('Eu Augue Porttitor LLP','09.754.040/6222-31','20 2298-9650','Vivamus.nisi@iaculislacuspede.org','1'),('Arcu Limited','71.484.093/6728-94','69 4656-2458','arcu@fringilla.com','1');
INSERT INTO "tb_fornecedor" (nome,cnpj,telefone,email,fg_ativo) VALUES ('Vulputate Risus A Company','99.912.015/5116-78','71 9394-4592','leo.Cras.vehicula@utpharetra.edu','1'),('Ut Tincidunt LLC','57.886.032/8838-28','55 1819-4357','gravida.sagittis@parturientmontes.net','1'),('Ut Institute','99.137.706/2101-98','06 9451-0110','elit.elit.fermentum@ultriciessemmagna.edu','1'),('Morbi Quis LLC','16.624.161/5836-13','15 1451-7157','eros.Nam.consequat@eueros.edu','1'),('Fusce LLP','61.678.538/5200-31','01 1700-2135','sagittis.placerat@feugiatplacerat.edu','1'),('Non Cursus Corporation','40.455.530/1445-41','01 7682-6058','Curabitur.ut.odio@odioPhasellusat.co.uk','1'),('Egestas Industries','63.479.437/8135-71','20 5931-1274','ad@amet.edu','1'),('Dapibus Id Blandit Inc.','42.410.117/5955-78','58 8526-4944','lobortis@ornareegestas.org','1'),('Iaculis Aliquet Diam LLC','20.363.738/1570-09','69 9823-8711','semper.auctor.Mauris@enimnonnisi.edu','1'),('In Dolor Incorporated','07.642.716/8715-67','65 6377-2262','Donec@sagittisplacerat.edu','1');
INSERT INTO "tb_fornecedor" (nome,cnpj,telefone,email,fg_ativo) VALUES ('Donec Ltd','70.169.568/8828-60','84 7539-0439','elit.dictum.eu@velvenenatis.co.uk','1'),('Orci Consectetuer Euismod Associates','34.184.386/7570-64','19 1665-2361','sociis@nislMaecenasmalesuada.com','1'),('Eu Nulla Consulting','07.382.710/7706-59','41 3588-0356','Nunc@pedesagittisaugue.org','1'),('Dolor LLC','61.864.623/7125-98','73 6434-7459','nec.cursus@accumsaninterdum.com','1'),('Nec Corp.','71.673.091/6522-28','12 3963-1750','tellus.Aenean@dolor.co.uk','1'),('Et Industries','45.535.404/5824-85','03 6239-2121','metus@Sed.net','1'),('Lobortis Risus Inc.','66.843.786/6782-12','84 0830-4703','lorem.luctus.ut@habitant.ca','1'),('Vel Est Tempor Corporation','43.988.150/6033-44','49 8179-1947','ac.turpis.egestas@cursusdiamat.co.uk','1'),('Id Associates','81.164.713/4200-74','45 6344-9934','Pellentesque.ultricies.dignissim@tristiquesenectuset.com','1'),('Velit Pellentesque Ultricies Ltd','11.069.512/5250-17','81 7617-1489','viverra.Donec@elitsedconsequat.org','1');
INSERT INTO "tb_fornecedor" (nome,cnpj,telefone,email,fg_ativo) VALUES ('Ornare Lectus Justo PC','82.919.866/0401-32','93 1027-1366','nulla@necmaurisblandit.edu','1'),('Eget PC','18.160.407/6965-23','37 3851-6505','mi.Duis.risus@arcu.com','1'),('Sed Nunc Institute','86.590.846/7949-01','69 8362-0625','dis.parturient@tincidunttempusrisus.net','1'),('Ut Tincidunt Vehicula Limited','86.867.698/3124-03','27 6117-2419','id@velitQuisque.edu','1'),('Rutrum Eu Corp.','48.583.139/2576-14','34 0378-8340','mauris.rhoncus.id@acmattisvelit.co.uk','1'),('Sagittis Corporation','18.996.870/1178-41','33 3332-6583','hendrerit.neque@euligulaAenean.edu','1'),('Magna A Neque LLC','84.509.956/3067-13','35 8354-6437','libero@lacusAliquamrutrum.ca','1'),('Eget Varius Incorporated','63.398.789/9872-90','76 5536-9893','velit.Cras.lorem@risusIn.edu','1'),('Morbi Tristique Limited','53.674.438/6608-50','80 5809-7399','mi@eu.ca','1'),('Dolor Limited','87.051.585/5309-75','24 7678-0049','elementum@non.com','1');
INSERT INTO "tb_fornecedor" (nome,cnpj,telefone,email,fg_ativo) VALUES ('Facilisis LLC','85.217.825/0994-13','78 5727-2688','sodales.at@facilisisvitaeorci.org','1'),('Risus Nunc Company','11.602.781/7193-48','88 6736-6291','penatibus.et@nibh.com','1'),('Sed Et Company','76.606.353/5172-85','65 6117-6327','euismod@iaculis.net','1'),('Est Company','73.525.824/2970-44','46 3480-1600','ut.nulla@in.com','1'),('Dignissim Ltd','71.936.594/5560-85','84 4038-6723','ante@tellusimperdietnon.ca','1'),('Dictum Placerat Associates','74.730.702/2702-13','18 9413-4355','lacus.Nulla@Phasellusdapibusquam.co.uk','1'),('Ac Tellus Suspendisse Associates','30.750.786/5321-94','18 7312-5421','Cum@ridiculusmus.com','1'),('Pede Nec Consulting','76.621.558/8515-02','37 0092-6592','Donec.luctus@egetvarius.co.uk','1'),('Eleifend Non Corporation','48.806.227/7671-73','39 5602-1372','libero@netus.edu','1'),('Morbi Vehicula LLC','41.921.850/0040-95','57 0912-9125','et.rutrum.non@sodalesat.ca','1');
INSERT INTO "tb_fornecedor" (nome,cnpj,telefone,email,fg_ativo) VALUES ('Consectetuer Cursus Et Corporation','15.330.110/4140-64','49 1613-4788','Maecenas.mi.felis@risusMorbimetus.edu','1'),('Aliquam Arcu LLC','38.204.052/3384-36','64 7688-2800','vitae@erat.com','1'),('Sit Amet Lorem PC','77.278.375/4155-97','15 8001-3021','netus.et.malesuada@pellentesquetellus.co.uk','1'),('Cubilia Incorporated','24.929.408/6257-03','51 4073-9489','fames.ac.turpis@enimnon.ca','1'),('Sagittis Nullam Vitae Inc.','87.313.311/8873-61','79 2682-4473','ligula@mattisIntegereu.edu','1'),('Felis LLC','28.099.071/4308-82','02 9798-7312','a@sedpedenec.edu','1'),('Et Magna Praesent Associates','00.600.945/3408-60','85 8560-9590','eget@etmagnis.org','1'),('Nunc PC','62.757.099/2181-71','93 7363-2681','Nulla.interdum@dolor.org','1'),('Ligula Corp.','49.728.730/2312-68','85 7017-5462','nisi@ipsumac.org','1'),('Congue Incorporated','62.806.093/1926-24','09 7479-8581','lobortis.augue.scelerisque@imperdietnonvestibulum.ca','1');

/*Carga para Tabela Peça */
insert into "tb_peca" (nome, quantidade, valorunitario,fg_ativo) values ('Carburador','5','200');
insert into "tb_peca" (nome, quantidade, valorunitario,fg_ativo) values ('Escapamento','5','700','1');
insert into "tb_peca" (nome, quantidade, valorunitario,fg_ativo) values ('Bomba d Água','10','50','1');
insert into "tb_peca" (nome, quantidade, valorunitario,fg_ativo) values ('Filtro de ar','5','40','1');
insert into "tb_peca" (nome, quantidade, valorunitario,fg_ativo) values ('Escapamento','5','700','1');
