﻿CREATE TABLE ROLES
(
    ID_ROLE INT IDENTITY(1,1) NOT NULL,
    NAME_ROLE VARCHAR(50) NULL DEFAULT 'NEW_ROLE',
    
    PRIMARY KEY CLUSTERED (ID_ROLE ASC)
)