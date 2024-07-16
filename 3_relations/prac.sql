CREATE TABLE movie(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    director_id INTEGER,
    category_id INTEGER,
    release_year INTEGER,
    FOREIGN KEY (director_id) REFERENCES director(id),
    FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE TABLE director(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
);


CREATE TABLE actor(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name varchar(255),
    last_name varchar(255),
);

CREATE TABLE movieCategory(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    category VARCHAR(255)
);

CREATE TABLE movie_actor(
    movie_id INTEGER,
    actor_id INTEGER,
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY movie_id REFERENCES movie(id),
    FOREIGN KEY actor_id REFERENCES actor(id) 
);




