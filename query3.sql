SELECT b.title
FROM books b,subjects s,books_subjects sb
WHERE b.id=sb.book AND s.id=sb.subject AND s.name IN ('Technology','Politics');
