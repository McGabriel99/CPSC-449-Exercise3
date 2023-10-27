BEGIN TRANSACTION;
PRAGMA foreign_keys=OFF;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS role;
DROP TABLE IF EXISTS user_role;
PRAGMA foreign_keys=ON;

CREATE TABLE "role" (
    id INTEGER PRIMARY KEY,
    name VARCHAR NOT NULL
);


CREATE TABLE "user" (
    id INTEGER PRIMARY KEY,
    username VARCHAR NOT NULL UNIQUE,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    password VARCHAR NOT NULL
);

CREATE TABLE "user_role" (
    id INTEGER PRIMARY KEY,
    user_id int NOT NULL,
    role_id int NOT NULL,
    FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN kEY (user_id) REFERENCES user(id)
);

-- role
INSERT INTO role(name) VALUES ("Registrar");
INSERT INTO role(name) VALUES ("Instructor");
INSERT INTO role(name) VALUES ("Student");

-- user
INSERT INTO user(username, first_name, last_name, password) VALUES 
("EmilyDavis", "Emily", "Davis", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="), -- password
("JohnSmith", "John", "Smith", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("JaneDoe", "Jane", "Doe", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("RobertJohnson", "Robert", "Johnson", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("MarkJohnson", "Mark", "Johnson", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("CatherineWilson", "Catherine", "Wilson", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("MatthewDavis", "Matthew", "Davis", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("JenniferHarris", "Jennifer", "Harris", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("KevinSmith", "Kevin", "Smith", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("LindaWilliam", "Linda", "Williams", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("MichaelWilson", "Michael", "Wilson", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("SusanBrown", "Susan", "Brown", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("DavidMiller", "David", "Miller", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("JenniferClark", "Jennifer", "Clark", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("RichardWhite", "Richard", "White", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("SarahAnderson", "Sarah", "Anderson", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("WilliamLee", "William", "Lee", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("KarenMartinez", "Karen", "Martinez", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("ThomasTaylor", "Thomas", "Taylor", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("LauraGarcia", "Laura", "Garcia", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("StevenHarris", "Steven", "Harris", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("DanielWilson", "Daniel", "Wilson", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("MichelleJohnson", "Michelle", "Johnson", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("ChristopherBrown", "Christopher", "Brown", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("JessicaAnderson", "Jessica", "Anderson", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("JasonTurner", "Jason", "Turner", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("MelissaAdams", "Melissa", "Adams", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("PaulRobinson", "Paul", "Robinson", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("JessicaMiller", "Jessica", "Miller", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("BrianThompson", "Brian", "Thompson", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("SandraDavis", "Sandra", "Davis", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("EricSmith", "Eric", "Smith", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("RachelEvans", "Rachel", "Evans", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("GeorgeParker", "George", "Parker", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY="),
("LisaHernandez", "Lisa", "Hernandez", "pbkdf2_sha256$260000$70fc24eb3ab06fb387a133ae427f1bd7$cUgdw64Qzyyco0Uf5g73QmXlWklQNvx3gOz9PyypfVY=");


-- user_role
INSERT INTO user_role (user_id, role_id) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3);

COMMIT;