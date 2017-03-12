CREATE TABLE [dbo].[RelationshipType] (
    [RelationshipTypeId] INT           IDENTITY (1, 1) NOT NULL,
    [RelationshipType]   NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_RelationshipType] PRIMARY KEY CLUSTERED ([RelationshipTypeId] ASC)
);

