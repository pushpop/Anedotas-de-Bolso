DROP TABLE IF EXISTS "Alentejanos";
CREATE TABLE "Alentejanos" ("id" INTEGER PRIMARY KEY  NOT NULL ,"texto" TEXT);
INSERT INTO "Alentejanos" VALUES(0,'- Quantos Alentejanos são precisos p''ra fazerem um filho? 

- Seis, um Alentejano, uma Alentejana e mais quatro para abanarem a cama.');
INSERT INTO "Alentejanos" VALUES(1,'- O que faz um Alentejano no meio de uma seara com uma G3 na mão????

- É um cereal killer !!!!');
INSERT INTO "Alentejanos" VALUES(2,'Dizia um caçador lisboeta numa tasca alentejana depois de um dia de caça:

- Hoje cacei 100 coelhos, 200 perdizes e 300 tordos.
Diz-lhe um alentejano:
- Atão você é tal e qual coma mim.
- Ah! Então o senhor também é caçador?
- Nã senhori, sou munta mentiroso!');
DROP TABLE IF EXISTS "Loiras";
CREATE TABLE "Loiras" ("id" INTEGER PRIMARY KEY  NOT NULL  UNIQUE , "texto" );
INSERT INTO "Loiras" VALUES(0,'- "Porque as loiras não fazem gelo?"

- Porque esquecem-se da receita!');
INSERT INTO "Loiras" VALUES(1,'- Porque é que a loira não gostou do Japão?

- Porque descobriu que o 54 inch da Sony não era um vibrador.');
DROP TABLE IF EXISTS "tipos";
CREATE TABLE "tipos" ("id" INTEGER PRIMARY KEY ,"tipo" TEXT);
INSERT INTO "tipos" VALUES(0,'-RESERVADA-');
INSERT INTO "tipos" VALUES(1,'Alentejanos');
INSERT INTO "tipos" VALUES(2,'Loiras');
