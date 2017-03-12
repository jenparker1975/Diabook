CREATE TABLE [dbo].[PersonClinic] (
    [PersonClinicId] INT IDENTITY (1, 1) NOT NULL,
    [PersonId]       INT NOT NULL,
    [ClinicId]       INT NOT NULL,
    CONSTRAINT [PK_PersonClinic] PRIMARY KEY CLUSTERED ([PersonClinicId] ASC),
    CONSTRAINT [FK_PersonClinic_Clinic] FOREIGN KEY ([ClinicId]) REFERENCES [dbo].[Clinic] ([ClinicId]),
    CONSTRAINT [FK_PersonClinic_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId])
);

