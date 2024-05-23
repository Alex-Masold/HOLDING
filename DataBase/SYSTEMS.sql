﻿CREATE TABLE SYSTEMS
(
    ID_SYSTEM INT IDENTITY(1, 1) NOT NULL,
    ID_ROLE INT NULL,
    NAME_SYSTEM VARCHAR(50) NULL DEFAULT 'NEW_SYSTEM',

    PRIMARY KEY CLUSTERED (ID_SYSTEM ASC),
    CONSTRAINT FK_SYSTEMS_ROLES FOREIGN KEY (ID_ROLE) REFERENCES ROLES (ID_ROLE)
)

GO
CREATE NONCLUSTERED INDEX [IX_SYSTEMS_ID_ROLE]
    ON [dbo].[SYSTEMS]([ID_ROLE] ASC);