CREATE TABLE [dbo].[Camp] (
    [CampId] INT           IDENTITY (1, 1) NOT NULL,
    [Camp]   NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Camp] PRIMARY KEY CLUSTERED ([CampId] ASC)
);

