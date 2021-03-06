SELECT 
    Me.PersonId                      AS MeId, 
	Me.Name,
    FriendOfFriend.RelatedPersonId    AS SuggestedFriendId,
	FriendOfAFriend.Name    
FROM 
    Person         AS Me 
INNER JOIN 
      PersonRelationship    AS MyFriends 
      ON MyFriends.PersonId = Me.PersonId 
INNER JOIN 
    PersonRelationship    AS FriendOfFriend 
    ON MyFriends.RelatedPersonId = FriendOfFriend.PersonId 
INNER JOIN
	 Person				AS FriendOfAFriend
	 ON FriendOfFriend.RelatedPersonId = FriendOfAFriend.PersonId
LEFT JOIN 
      PersonRelationship    AS FriendsWithMe 
      ON  Me.PersonId = FriendsWithMe.PersonId 
      AND FriendOfFriend.RelatedPersonId = FriendsWithMe.RelatedPersonId
INNER JOIN
	   PersonDisease
	   ON PersonDisease.PersonId = FriendOfAFriend.PersonId
WHERE 
    FriendsWithMe.PersonId IS NULL 
	AND Me.PersonId <> FriendOfFriend.RelatedPersonId   
	AND Me.Name = 'Harry'
	AND PersonDisease.DiseaseId = 1
