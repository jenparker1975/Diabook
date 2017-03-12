CREATE TABLE [dbo].[PersonMedication] (
    [PersonMedicationId] INT IDENTITY (1, 1) NOT NULL,
    [PersonId]           INT NOT NULL,
    [MedicationId]       INT NOT NULL,
    CONSTRAINT [PK_PersonMedication] PRIMARY KEY CLUSTERED ([PersonMedicationId] ASC),
    CONSTRAINT [FK_PersonMedication_Medication] FOREIGN KEY ([MedicationId]) REFERENCES [dbo].[Medication] ([MedicationId]),
    CONSTRAINT [FK_PersonMedication_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId])
);

