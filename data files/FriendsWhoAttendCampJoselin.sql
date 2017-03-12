SELECT distinct fr.* 
FROM 
	Person p
INNER JOIN 	
	PersonRelationship PR
ON 
	p.PersonID = PR.PersonID
INNER JOIN 
	Person fr
ON
  PR.RelatedPersonId = fr.PersonID
INNER JOIN 
	PersonCamp pc 
ON
	fr.PersonId = pc.PersonID
INNER JOIN
	Camp c
ON
	pc.CampId = c.CampId
WHERE
   c.Camp = 'Joselin Diabetes Camp' AND
   (p.PersonId = 2)