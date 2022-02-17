

    -- create ANIMALS table 

    CREATE TABLE "ANIMALS" (
	"Id"		INTEGER NOT NULL,
	"species"	TEXT    NOT NULL,
	"name"  	TEXT    NOT NULL, 
	"age"		INTEGER,
	"fed"		INTEGER  NOT NULL CHECK ( fed IN(0,1)),
	PRIMARY KEY("Id")
);


-- Insert data to table 

INSERT INTO "ANIMALS"
(species, name, age, fed)
VALUES  
  ("Callithrix jacchus"   ,   "White-tufted-ear marmoset" ,"4" "0"),
  ("Macaca mulatta"       ,   "House mouse"               ,   "40"  "1"),
  ("Heterocephalus glaber",   "Rhesus monkey"             ,    "31" "0"),
  ("Canis familiaris"     ,   "Naked mole-rat"            ,    "27" "0"),
  ("Pan troglodytes"      ,   "Domestic dog"              ,   "1" "1"),
  ("Papio hamadryas"      ,   "Hamadryas baboon"          ,   "37" "0");


  -- adding a column 
ALTER TABLE ANIMALS 
ADD
favorite_food TEXT;


-- droping a column 
ALTER TABLE ANIMALS DROP favorite_food


--renaming a column 
ALTER TABLE ANIMALS RENAME
favorite_food
TO
fav_food;


-- creating origin table and adding a default value for all cells 
ALTER TABLE ANIMALS 
ADD
origin TEXT NOT NULL DEFAULT 'Albania'



--deleting a row from db
DELETE FROM  ANIMALS 
where id=9 ;


-- selecting all db
SELECT * FROM ANIMALS;

-- selecting species and age
SELECT * FROM ANIMALS;
SELECT species, age FROM ANIMALS ; 

-- selecting species and age  with a specific ID 
SELECT * FROM ANIMALS;
SELECT species, age FROM ANIMALS WHERE id = 3; 


-- updating a single cell
UPDATE  ANIMALS 
SET fed = 1 
WHERE id = 2;

-- updating multiple cells
UPDATE  ANIMALS 
SET fed = 1 ,
fav_food = "banana",
age = 10
WHERE id = 7;


