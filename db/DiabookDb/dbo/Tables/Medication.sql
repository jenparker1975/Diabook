CREATE TABLE [dbo].[Medication] (
    [MedicationId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Medication] PRIMARY KEY CLUSTERED ([MedicationId] ASC)
);

