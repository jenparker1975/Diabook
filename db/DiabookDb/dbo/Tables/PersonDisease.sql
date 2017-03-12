CREATE TABLE [dbo].[PersonDisease] (
    [PersonDiseaseId] INT IDENTITY (1, 1) NOT NULL,
    [PersonId]        INT NOT NULL,
    [DiseaseId]       INT NOT NULL,
    CONSTRAINT [PK_PersonDisease] PRIMARY KEY CLUSTERED ([PersonDiseaseId] ASC),
    CONSTRAINT [FK_PersonDisease_Disease] FOREIGN KEY ([DiseaseId]) REFERENCES [dbo].[Disease] ([DiseaseId]),
    CONSTRAINT [FK_PersonDisease_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId])
);

