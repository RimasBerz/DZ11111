CREATE PROCEDURE Alex_books @name nvarchar(25) AS 
SELECT c.id_teacher,c.id_book,c.date_in,c.date_out,b.id AS book_id,t.id AS teacher,t.firstname
FROM ((Book b 
JOIN T_CArds c
ON c.id_book = b.id)
JOIN Teacher t
ON c.id_teacher = t.id)
WHERE c.date_out IS NULL AND t.firstname = 'Alex'

EXEC Alex_books name