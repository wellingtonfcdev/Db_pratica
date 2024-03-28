-- Select com coluna específica

SELECT Title  FROM person.person

SELECT FirstName+' '+LastName as Name  FROM person.person

--Distinct
SELECT DISTINCT FIRSTNAME FROM PERSON.PERSON

--Where
SELECT * FROM PERSON.PERSON
WHERE LastName = 'Miller' and FirstName = 'anna'

SELECT * FROM Production.Product
WHERE ListPrice > 1500 AND ListPrice < 5000

--Count
SELECT COUNT(TITLE) FROM Person.Person

SELECT COUNT(DISTINCT TITLE) FROM Person.Person

--Top
SELECT TOP 10 * FROM Person.Person
ORDER BY FirstName ASC

--Between
SELECT * FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500

SELECT * FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 AND 1500

--In
SELECT * FROM PERSON.Person
WHERE BusinessEntityID IN (2,7,13)

--Like
SELECT * FROM PERSON.Person
WHERE FirstName LIKE '%to%'

-- Inner Join
SELECT * FROM
PERSON.PersonPhone PP
INNER JOIN PERSON.PhoneNumberType PT 
ON PT.PhoneNumberTypeID = PP.PhoneNumberTypeID

-- Left Join
SELECT * FROM PERSON.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL
