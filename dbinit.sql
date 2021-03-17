USE sys;

CREATE TABLE Peoples (
  firstname VARCHAR(20),
  secondname VARCHAR(20),
  `address` VARCHAR(20),
  city CHAR(15)
);

INSERT INTO Peoples VALUES ('Ram', 'Iyer', '500 Manhattan', 'New York');
INSERT INTO Peoples VALUES ('Suresh', 'Iyer', '123 First St.', 'Los Angeles');