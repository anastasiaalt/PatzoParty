DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS editors;
DROP TABLE IF EXISTS articles;
DROP TABLE IF EXISTS categories;

CREATE TABLE authors (
  id INTEGER PRIMARY KEY,
  name1 VARCHAR,
  name2 VARCHAR,
  location VARCHAR,
  img_url VARCHAR
);

CREATE TABLE editors (
  id INTEGER PRIMARY KEY,
  name1 VARCHAR,
  name2 VARCHAR,
  location VARCHAR,
  img_url VARCHAR
);

CREATE TABLE articles (
  id INTEGER PRIMARY KEY,
  title VARCHAR (225),
  img_url VARCHAR (225),
  content VARCHAR,
  created_at DATETIME,
  author_id INTEGER
);

CREATE TABLE categories (
  id INTEGER PRIMARY KEY,
  label VARCHAR (225),
  article_id INTEGER
);

CREATE TABLE articles_editors (
  article_id VARCHAR,
  editor_id INTEGER
);