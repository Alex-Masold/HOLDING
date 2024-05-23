﻿CREATE TABLE POSITIONS
(
    ID_POSITION     INT IDENTITY(1, 1) NOT NULL,
    ID_DEPARTMENT   INT NULL,
    NAME_POSITION VARCHAR(50) NULL DEFAULT 'NEW_POSITION',

    PRIMARY KEY CLUSTERED (ID_POSITION ASC),
    CONSTRAINT FK_DEPARTMENTS_POSITIONS FOREIGN KEY (ID_DEPARTMENT) REFERENCES DEPARTMENTS (ID_DEPARTMENT)
)

GO
CREATE NONCLUSTERED INDEX [IX_POSITIONS_ID_DEPARTMENT]
    ON [dbo].[POSITIONS]([ID_DEPARTMENT] ASC);