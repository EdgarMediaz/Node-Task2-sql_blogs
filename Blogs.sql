CREATE TABLE "User" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int
);

CREATE TABLE "Posts" (
  "id" SERIAL PRIMARY KEY,
  "user_id" int,
  "title" varchar,
  "description" varchar,
  "author" varchar,
  "content" text
);

CREATE TABLE "Tags" (
  "id" SERIAL PRIMARY KEY,
  "post_id" int,
  "name" varchar
);

CREATE TABLE "Comments" (
  "id" SERIAL PRIMARY KEY,
  "post_id" int,
  "comment" varchar
);

ALTER TABLE "Comments" ADD FOREIGN KEY ("post_id") REFERENCES "Posts" ("id");

ALTER TABLE "Tags" ADD FOREIGN KEY ("post_id") REFERENCES "Posts" ("id");

ALTER TABLE "Posts" ADD FOREIGN KEY ("user_id") REFERENCES "User" ("id");

insert into "User" (name, email, password, age) values
('Edgar', 'edd@mail.com', '1234', 34),
('Jesus', 'jes@mail.com', '4321', 28);

insert into "Posts" (title, description, author, content) values
('Mac vs WINDOW', 'Which is best?', 'The Verge', 'Comparison among Mac OS and Windows'),
('Apple Watch', 'Different models', 'Edd', 'Choosing the right model for you');

insert into "Tags" (name) values
('Tehcnology'), ('LifeStyle');

insert into "Comments" (comment) values
('This is such a disputed post'),
('Finally I can choose which one to buy');
