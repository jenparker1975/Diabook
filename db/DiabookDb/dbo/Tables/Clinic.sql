CREATE TABLE [dbo].[Clinic] (
    [ClinicId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Clinic] PRIMARY KEY CLUSTERED ([ClinicId] ASC)
);

