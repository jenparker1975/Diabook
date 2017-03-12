CREATE TABLE [dbo].[Disease] (
    [DiseaseId] INT           IDENTITY (1, 1) NOT NULL,
    [Disease]   NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Disease] PRIMARY KEY CLUSTERED ([DiseaseId] ASC)
);

