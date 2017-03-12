CREATE TABLE [dbo].[PersonRelationship] (
    [PersonRelationshipId] INT IDENTITY (1, 1) NOT NULL,
    [PersonId]             INT NOT NULL,
    [RelatedPersonId]      INT NOT NULL,
    [RelationshipTypeId]   INT NOT NULL,
    [LengthOfRelationship] INT NULL,
    CONSTRAINT [PK_PersonRelationship] PRIMARY KEY CLUSTERED ([PersonRelationshipId] ASC),
    CONSTRAINT [FK_PersonRelationship_Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonRelationship_Person1] FOREIGN KEY ([RelatedPersonId]) REFERENCES [dbo].[Person] ([PersonId]),
    CONSTRAINT [FK_PersonRelationship_RelationshipType] FOREIGN KEY ([RelationshipTypeId]) REFERENCES [dbo].[RelationshipType] ([RelationshipTypeId])
);

