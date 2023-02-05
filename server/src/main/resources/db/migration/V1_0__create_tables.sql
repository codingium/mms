CREATE TABLE Role(
    ID INT GENERATED ALWAYS AS IDENTITY,
    Name VARCHAR(30),
    Remark VARCHAR(200),
    CreateDateTime TIMESTAMP DEFAULT NOW(),
    LastModifiedDateTime TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY (ID)
);

CREATE TABLE Users (
     ID INT GENERATED ALWAYS AS IDENTITY,
     RoleTypeID INT,
     FirstName VARCHAR(30),
     LastName VARCHAR(30),
     Password VARCHAR(32),
     Email VARCHAR(40),
     Remark VARCHAR(200),
     CreateDateTime TIMESTAMP DEFAULT NOW(),
     LastModifiedDateTime TIMESTAMP DEFAULT NOW(),
     PRIMARY KEY (ID),
         CONSTRAINT  fk_Role
         FOREIGN KEY(RoleTypeID)
             REFERENCES Role(ID)
);

-- INSERT INTO Role(Name) VALUES('Test');
-- INSERT INTO Users(RoletypeID, FirstName, LastName) VALUES
--                  (1, 'Test', 'Elek');