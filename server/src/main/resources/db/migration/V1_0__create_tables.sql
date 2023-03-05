CREATE TABLE RoleType(
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
                               REFERENCES RoleType(ID)
);

CREATE TABLE Options (
                         ID INT GENERATED ALWAYS AS IDENTITY,
                         Key VARCHAR(50),
                         Value VARCHAR(50),
                         Remark VARCHAR(200),
                         CreateDateTime TIMESTAMP DEFAULT NOW(),
                         LastModifiedDateTime TIMESTAMP DEFAULT NOW(),
                         PRIMARY KEY (ID)
);

CREATE TABLE CurrencyType(
                             ID INT GENERATED ALWAYS AS IDENTITY,
                             FullName VARCHAR(50),
                             ShortName VARCHAR(50),
                             Symbol CHAR,
                             Remark VARCHAR(200),
                             CreateTime TIMESTAMP DEFAULT NOW(),
                             LastModifiedTime TIMESTAMP DEFAULT NOW(),
                             PRIMARY KEY(ID)
);

CREATE TABLE Account (
                          ID INT GENERATED ALWAYS AS IDENTITY,
                          UserID INT,
                          CurrencyID INT,
                          Balance INT,
                          Remark VARCHAR(200),
                          CreateDateTime TIMESTAMP DEFAULT NOW(),
                          LastModifiedDateTime TIMESTAMP DEFAULT NOW(),
                          PRIMARY KEY(ID),
                          CONSTRAINT  fk_User
                              FOREIGN KEY(UserID)
                                  REFERENCES Users(ID)
);

CREATE TABLE TransactionType(
                             ID INT GENERATED ALWAYS AS IDENTITY,
                             Name VARCHAR(50),
                             Remark VARCHAR(200),
                             CreateTime TIMESTAMP DEFAULT NOW(),
                             LastModifiedTime TIMESTAMP DEFAULT NOW(),
                             PRIMARY KEY(ID)
);

CREATE TABLE Transaction(
                             ID INT GENERATED ALWAYS AS IDENTITY,
                             TransactionTypeID INT,
                             CurrencyID INT,
                             MoneySpent INT,
                             Remark VARCHAR(200),
                             CreateTime TIMESTAMP DEFAULT NOW(),
                             LastModifiedTime TIMESTAMP DEFAULT NOW(),
                             PRIMARY KEY(ID),
                             CONSTRAINT fk_Category
                                 FOREIGN KEY(TransactionTypeID)
                                     REFERENCES TransactionType(ID),
                             CONSTRAINT fk_Currency
                                 FOREIGN KEY(CurrencyID)
                                     REFERENCES CurrencyType(ID)
);

-- INSERT INTO Role(Name) VALUES('Test');
-- INSERT INTO Users(RoletypeID, FirstName, LastName) VALUES
--                  (1, 'Test', 'Elek');
