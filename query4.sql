SELECT s.name
FROM books b,subjects s,books_subjects bs
WHERE b.id=bs.book AND s.id=bs.subject AND b.title='Atomic Habits';
