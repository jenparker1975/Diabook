CREATE TABLE [dbo].[PersonCamp] (
    [PersonCampId] INT IDENTITY (1, 1) NOT NULL,
    [PersonId]     INT NOT NULL,
    [CampId]       INT NOT NULL,
    CONSTRAINT [PK_PersonCamp] PRIMARY KEY CLUSTERED ([PersonCampId] ASC),
    CONSTRAINT [FK_PersonCamp_Camp] FOREIGN KEY ([CampId]) REFERENCES [dbo].[Camp] ([CampId]),
    CONSTRAINT [FK_PersonCamp_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId])
);

