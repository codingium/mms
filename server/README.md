MMS adatabázis V0.1

USERS
------------
ID: INT PK AUTOINCREMENT
FirstName: VARCHAR
LastName: VARCHAR
Password: HASH STRING
Email: VARCHAR
RoleType: FK INT
Remark: VARCHAR
CreateTime: DATETIME
LastModifiedTime: DATETIME

ROLE
------------
ID: INT PK AUTOINCREMENT
Name: VARCHAR
Remark: VARCHAR
CreateTime: DATETIME
LastModifiedTime: DATETIME

OPTIONS
------------
ID: INT PK AUTOINCREMENT
Key: VARCHAR
Value: VARCHAR
Remark: VARCHAR
CreateTime: DATETIME
LastModifiedTime: DATETIME

TRX
------------
ID: INT PK AUTOINCREMENT
UserID: FK INT
HistoryID: PK INT
CurrencyID: PK INT
AllMoney: INT
MoneyRemain: INT
StatusID: PK INT
#Database structure

Remark: VARCHAR
CreateTime: DATETIME
LastModifiedTime: DATETIME

MONEYHISTORY
-------------
ID: PK INT AUTOINCREMENT
ManagmentID: PK INT
CategoryTypeID: FK INT
CurrencyID: PK INT
MoneySpent: INT
Remark: VARCHAR
CreateTime: DATETIME
LastModifiedTime: DATETIME

CURENNCYTYPE
--------------
ID: PK INT AUTOINCREMENT
FullName: VARCHAR
ShortName: VARCHAR
Symbol: CHAR
Remark: VARCHAR
CreateTime: DATETIME
LastModifiedTime: DATETIME

CATEGORYTYPE
--------------
ID: PK INT AUTOINCREMENT
Name: VARCHAR
Remark: VARCHAR
CreateTime: DATETIME
LastModifiedTime: DATETIME

//safe delete
// trx status table
