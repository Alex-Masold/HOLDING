﻿CREATE TABLE EMPLOYEES
(
    ID_EMPLOYEE INT IDENTITY(1, 1) NOT NULL,
    ID_APPOINTMENT INT NULL,
    ID_EMPLOYEE_STATUS INT NULL,
    NAME_EMPLOYEE VARCHAR(50) NULL DEFAULT 'NEW_NAME',
    FAMILY_EMPLOYEE VARCHAR(50) NULL DEFAULT 'NEW_FAMILY',
    PATRONYMIC_EMPLOYEE VARCHAR(50) NULL DEFAULT 'NEW_PATRONYMIC',
    GENDER_EMPLOYEE VARCHAR(50) NULL DEFAULT 'MAN',
    BIRTHDAY_EMPLOYEE DATE NULL,

    PRIMARY KEY CLUSTERED (ID_EMPLOYEE ASC),
    CONSTRAINT FK_APPOINTMENTS_EMPLOYEES FOREIGN KEY (ID_APPOINTMENT) REFERENCES APPOINTMENTS (ID_APPOINTMENT),
    CONSTRAINT FK_EMPLOYEE_STATUSES_EMPLOYEES FOREIGN KEY (ID_EMPLOYEE_STATUS) REFERENCES EMPLOYEE_STATUSES (ID_EMPLOYEE_STATUS)
)