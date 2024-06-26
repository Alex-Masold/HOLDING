﻿CREATE TABLE ORGANIZATIONS
(
    ID_ORGANIZATION INT IDENTITY(1,1) NOT NULL,
    ID_TYPE_ORGANIZATION INT NULL,
    NAME_ORGANIZATION VARCHAR(100) NULL DEFAULT 'NEW_ORGANIZATION',

    PRIMARY KEY CLUSTERED (ID_ORGANIZATION ASC),
    CONSTRAINT FK_ORGANIZATIONS_TYPE_ORGANIZATIONS FOREIGN KEY (ID_TYPE_ORGANIZATION) REFERENCES TYPES_ORGANIZATION(ID_TYPE_ORGANIZATION)
)

GO
CREATE NONCLUSTERED INDEX [IX_ORGANIZATIONS_ID_TYPE_ORGANIZATION]
    ON [dbo].[ORGANIZATIONS]([ID_TYPE_ORGANIZATION] ASC);