-- P1
CREATE TABLE employee(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    year INTEGER NOT NULL,
    grade VARCHAR(32) NOT NULL,
    salary INTEGER NOT NULL
);

-- P2
CREATE TABLE goods(
    id INtEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) NOT NULL, 
    price INTEGER NOT NULL,
    stock INTEGER
);
-- p3
CREATE TABLE restaurantMenu(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(32) NOT NULL,
    description TEXT,
    price INTEGER NOT NULL,
    vegetarian BOOLEAN NOT NULL
);
--P4
CREATE TABLE music(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(255) NOT NULL,
    artist VARCCHAR(100),
    writer VARCHAR(100),
    lyrics TEXT,
    album_name VARCHAR(255),
    year INTEGER,
    dur_in_secs INTEGER
);

--P5
ALTER TABLE employee ADD COLUMN phone_number VARCHAR(15);
ALTER TABLE employee ADD COLUMN email VARCHAR(255);

--P6
ALTER TABLE goods ADD COLUMN company VARCHAR(255);












