USE demo;

DROP TABLE IF EXISTS EMP;
CREATE TABLE EMP (
  id INT AUTO_INCREMENT,
  name VARCHAR(50),
  PRIMARY KEY(id)
);

SELECT * FROM emp;
INSERT INTO emp(name) values("펭수");
INSERT INTO emp(name) values("길동");
INSERT INTO emp(name) values("라이언");
INSERT INTO emp(name) values("실버");
INSERT INTO emp(name) values("마틸다");

DROP TABLE IF EXISTS members;

select * from members;

CREATE TABLE members (
  `id` int(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `phone` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO members (`name`,`phone`,`email`)
VALUES
  ("Morin","010-0642-8211","et.arcu@naver.com"),
  ("Slater","010-6656-6360","lacus.etiam.bibendum@naver.com"),
  ("Bolton","010-6968-0956","aenean.eget@naver.com"),
  ("Reid","010-7112-5166","tempor@naver.com"),
  ("Sharpe","010-6637-6302","cras.convallis@naver.com"),
  ("Le","010-2114-6233","auctor.odio@naver.com"),
  ("Munoz","010-2481-5844","porttitor.eros.nec@naver.com"),
  ("Morgan","010-6031-5436","turpis.in@naver.com"),
  ("Ryan","010-5436-3157","elementum.sem.vitae@naver.com"),
  ("Schroeder","010-7850-3065","duis.risus.odio@naver.com");
INSERT INTO members (`name`,`phone`,`email`)
VALUES
  ("Mcgee","010-8078-0083","donec.nibh@naver.com"),
  ("Diaz","010-8387-3718","nec.tellus.nunc@naver.com"),
  ("Hayes","010-6272-1219","mauris.morbi.non@naver.com"),
  ("Mcconnell","010-8144-7843","sagittis.semper.nam@naver.com"),
  ("Kerr","010-5302-1782","laoreet.libero@naver.com"),
  ("Burks","010-3677-2278","a@naver.com"),
  ("Burch","010-5712-5164","nibh@naver.com"),
  ("Ramsey","010-6374-1123","libero.nec@naver.com"),
  ("Meyer","010-2272-9514","nulla.dignissim@naver.com"),
  ("Bean","010-8999-9336","sit.amet@naver.com");
INSERT INTO members (`name`,`phone`,`email`)
VALUES
  ("Henderson","010-6608-5883","maecenas.ornare@naver.com"),
  ("Hardy","010-5126-6011","ipsum.donec@naver.com"),
  ("Mckenzie","010-3244-2685","praesent.interdum@naver.com"),
  ("Snider","010-3256-5608","pharetra.ut@naver.com"),
  ("Peters","010-2871-3819","luctus.ut.pellentesque@naver.com"),
  ("Wade","010-9076-2813","non.luctus@naver.com"),
  ("Hart","010-4525-8483","integer.vulputate@naver.com"),
  ("Aguilar","010-6732-6609","ac@naver.com"),
  ("Hogan","010-5267-9293","sem.elit.pharetra@naver.com"),
  ("Shepherd","010-7762-9577","interdum.libero@naver.com");
INSERT INTO members (`name`,`phone`,`email`)
VALUES
  ("Merrill","010-4848-6343","a.malesuada@naver.com"),
  ("Roman","010-5737-8454","egestas.urna@naver.com"),
  ("Merritt","010-1173-7769","amet.ante@naver.com"),
  ("Richards","010-4878-5404","tristique@naver.com"),
  ("Molina","010-7964-8431","tellus.aenean.egestas@naver.com"),
  ("Reilly","010-7803-5586","egestas.a@naver.com"),
  ("Jimenez","010-3637-3179","ac.risus.morbi@naver.com"),
  ("Duncan","010-1632-4810","erat.vel@naver.com"),
  ("Horn","010-5754-5686","orci@naver.com"),
  ("Anderson","010-4938-2232","ultricies.ligula.nullam@naver.com");
INSERT INTO members (`name`,`phone`,`email`)
VALUES
  ("Key","010-7286-2387","nulla.in@naver.com"),
  ("White","010-1165-6535","aliquam.tincidunt@naver.com"),
  ("Nicholson","010-4679-4481","faucibus.morbi.vehicula@naver.com"),
  ("Deleon","010-8557-7037","proin@naver.com"),
  ("Burks","010-7492-5804","augue@naver.com"),
  ("Poole","010-2362-2033","ornare@naver.com"),
  ("Boyd","010-1144-0936","ante@naver.com"),
  ("Hall","010-7275-4135","euismod.in.dolor@naver.com"),
  ("Alford","010-6338-8028","lorem.auctor@naver.com"),
  ("Eaton","010-3279-7936","orci.in@naver.com");
INSERT INTO members (`name`,`phone`,`email`)
VALUES
  ("Klein","010-2504-1769","aliquam@naver.com"),
  ("Bolton","010-1700-7621","integer.urna@naver.com"),
  ("Castaneda","010-8225-8365","varius@naver.com"),
  ("Madden","010-1751-1414","curae.donec@naver.com"),
  ("Mayo","010-2597-5441","et.arcu@naver.com"),
  ("Duke","010-2012-0525","et.magnis.dis@naver.com"),
  ("Holcomb","010-7201-4698","ante.bibendum@naver.com"),
  ("Murphy","010-7473-6522","egestas.lacinia@naver.com"),
  ("Boyle","010-4465-3385","turpis.egestas.aliquam@naver.com"),
  ("Jacobs","010-8677-6858","odio.phasellus@naver.com");
INSERT INTO members (`name`,`phone`,`email`)
VALUES
  ("Terry","010-3835-9016","nunc@naver.com"),
  ("Strickland","010-3192-6224","quisque.porttitor@naver.com"),
  ("Snyder","010-4619-5045","curabitur.vel.lectus@naver.com"),
  ("Moreno","010-3588-5334","lectus.cum@naver.com"),
  ("Wolfe","010-8335-6883","ac.arcu@naver.com"),
  ("Preston","010-1714-6311","eget@naver.com"),
  ("Ford","010-5705-6578","at.arcu.vestibulum@naver.com"),
  ("Velez","010-2200-8894","in.nec@naver.com"),
  ("Stafford","010-5169-1669","egestas@naver.com"),
  ("Olsen","010-0483-5832","a.dui@naver.com");
INSERT INTO members (`name`,`phone`,`email`)
VALUES
  ("Kirkland","010-4578-3782","porttitor.vulputate@naver.com"),
  ("Owens","010-5671-0193","vivamus.euismod@naver.com"),
  ("Henderson","010-7700-3011","et.euismod@naver.com"),
  ("Spencer","010-3442-7636","proin.non@naver.com"),
  ("Buckley","010-3367-7244","lacinia@naver.com"),
  ("Mccarthy","010-0551-4223","varius.orci.in@naver.com"),
  ("Day","010-6124-7382","diam@naver.com"),
  ("Coleman","010-2425-0632","nulla@naver.com"),
  ("Strong","010-7861-9853","vivamus.molestie.dapibus@naver.com"),
  ("Santos","010-3798-9510","eu@naver.com");
INSERT INTO members (`name`,`phone`,`email`)
VALUES
  ("Workman","010-1434-7895","leo.cras.vehicula@naver.com"),
  ("Puckett","010-4769-3113","sit.amet@naver.com"),
  ("Hill","010-4316-5411","ipsum@naver.com"),
  ("Martin","010-7956-2281","facilisi.sed.neque@naver.com"),
  ("Fisher","010-1347-8596","purus.mauris.a@naver.com"),
  ("Tucker","010-1456-0741","quis@naver.com"),
  ("Lane","010-1192-8321","sed.libero@naver.com"),
  ("Little","010-2198-8392","orci.in.consequat@naver.com"),
  ("Travis","010-5323-6268","eget.tincidunt.dui@naver.com"),
  ("Washington","010-8332-8572","rutrum.urna.nec@naver.com");
INSERT INTO members (`name`,`phone`,`email`)
VALUES
  ("Quinn","010-8828-8851","sodales.at.velit@naver.com"),
  ("Spence","010-5114-3289","non@naver.com"),
  ("Patrick","010-8133-3775","fermentum.metus.aenean@naver.com"),
  ("Zamora","010-4362-3116","integer.id.magna@naver.com"),
  ("Fitzpatrick","010-6704-8385","ac@naver.com"),
  ("Turner","010-4863-6662","dictum.ultricies@naver.com"),
  ("Phelps","010-5609-7642","metus.vitae@naver.com"),
  ("Skinner","010-3521-3546","varius@naver.com"),
  ("Mcclure","010-5803-4468","convallis.ante.lectus@naver.com"),
  ("Sutton","010-5175-5506","quis@naver.com");
