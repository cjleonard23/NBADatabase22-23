-- Chris Leonard
-- Sean Satuner
-- Jack Ahmed
-- Diego Messmacher

-- CSC 4480 Principles of Databases
-- NBA Database

CREATE TABLE team(
    TeamName    VARCHAR(100)    NOT NULL,
    Stadium     VARCHAR(100)    NOT NULL,
    DivName     CHAR(50)    NOT NULL,
    Win         INT             NOT NULL,
    Loss        INT             NOT NULL,
    CoachID     INT             NOT NULL,
    PlayerID    INT             NOT NULL,
    TChampionships  INT         NULL,
    ConferecneWins  INT         NULL,
    DivisionWins    INT         NULL,
    CONSTRAINT      teamPK      PRIMARY KEY(TeamName)
);

CREATE TABLE location(
    Stadium     VARCHAR(100)    NOT NULL,
    City        CHAR(50)        NOT NULL,
    State       CHAR(50)        NOT NULL,
    CONSTRAINT  locationFK      FOREIGN KEY(Stadium)
                                    REFERENCES team(Stadium)
    );
    
CREATE TABLE division(
    DivName     CHAR(50)    NOT NULL,
    Conference  CHAR(50)    NOT NULL,
    CONSTRAINT  divisionFK  FOREIGN KEY(DivName)
                                REFERENCES team(DivName)
);