﻿CREATE TABLE ORGANIZATIONS
(
    ID_ORGANIZATION INT IDENTITY(1,1) NOT NULL,
    NAME_ORGANIZATION VARCHAR(100) NULL DEFAULT 'NEW_ORGANIZATION',

    PRIMARY KEY CLUSTERED (ID_ORGANIZATION ASC)
)