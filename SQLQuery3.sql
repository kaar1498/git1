use B_DB19_2018
INSERT INTO PET_OWNER VALUES (
	'1', 'Downs', 'Marsha', '555 537 8765', 'Marsha.Downs@somewhere.com');
INSERT INTO PET_OWNER VALUES (
	'2', 'James', 'Ríchard', '555 537 7654', 'Richard.James@somewhere.com');
INSERT INTO PET_OWNER VALUES (
	'3', 'Frier', 'Liz', '555 537 6543', 'Liz.Frier@somewhere.com');
INSERT INTO PET_OWNER (OwnerID, OwnerLastName, OwnerFirstName, OwnerEmail)
	VALUES('1', 'Trent', 'Miles', 'Miles.Trent@somewhere.com');

INSERT INTO PET (PetID, PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerID)
	VALUES('1', 'King', 'Dog', 'Std. Poodle', '2011-02-21', '25.5', '1')
INSERT INTO PET (PetID, PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerID)
	VALUES('2', 'Teddy', 'Cat', 'Cashmere', '2012-02-01', '10.5', '2')
INSERT INTO PET (PetID, PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerID)
	VALUES('3', 'Fido', 'Dog', 'Std. Poodle', '2010-07-17', '28.5', '1')
INSERT INTO PET (PetID, PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerID)
	VALUES('4', 'AJ', 'Dog', 'Collie Mix', '2011-05-05', '20.0', '3')
INSERT INTO PET (PetID, PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerID)
	VALUES('5', 'Cedro', 'Cat', 'Unknown', '2009-06-06', '09.5', '2')
INSERT INTO PET (PetID, PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerID)
	VALUES('6', 'Wooley', 'Dog', 'Border Collie', '2008-02-21', '09.5', '2')
INSERT INTO PET (PetID, PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerID)
	VALUES('7', 'Buster', 'Dog', 'Border Collie', '2008-12-11', '25.0', '4')