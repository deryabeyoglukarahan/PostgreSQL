CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);


INSERT INTO employee (id, name, birthday, email) VALUES
(1, 'Derya Karahan', '1998-05-11', 'dkarahan@example.com'),
(2, 'Lütfü Karahan', '1997-05-05', 'lkarahan@example.com'),
(3, 'Atlas Karahan', '2024-07-17', 'akarahan@example.com');


-- 1. name'e göre birthday güncelle
UPDATE employee SET birthday = '1990-01-01' WHERE name = 'Derya Karahan';

-- 2. id'ye göre email güncelle
UPDATE employee SET email = 'updated.email@example.com' WHERE id = 2;

-- 3. birthday'e göre name güncelle
UPDATE employee SET name = 'Güncellenmiş İsim' WHERE birthday = '1997-05-05';

-- 4. email'e göre birthday güncelle
UPDATE employee SET birthday = '2030-12-31' WHERE email = 'akarahan@example.com';

-- 5. name'e göre email güncelle
UPDATE employee SET email = 'dkarah.n@newdomain.com' WHERE name = 'Lütfü Karahan';

SELECT * FROM employee;



-- 1. id'ye göre sil
DELETE FROM employee WHERE id = 3;

-- 2. name'e göre sil
DELETE FROM employee WHERE name = 'Derya Karahan';

-- 3. birthday'e göre sil
DELETE FROM employee WHERE birthday = '2030-12-31';

-- 4. email'e göre sil
DELETE FROM employee WHERE email = 'dkarah.n@newdomain.com';

-- 5. name'e göre sil (farklı örnek)
DELETE FROM employee WHERE name = 'Güncellenmiş İsim';

SELECT * FROM employee;