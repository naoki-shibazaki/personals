
BEGIN TRANSACTION;


CREATE TABLE IF NOT EXISTS "users" ("id" serial primary key NOT NULL, "name" varchar, "email" varchar, "password_digest" varchar, "created_at" timestamp(6) NOT NULL, "updated_at" timestamp(6) NOT NULL);
INSERT INTO users VALUES(1,'test1','aaa@aaa.aaa','$2a$12$7is.vWw4Qge.oFXq7ervHOKJfQle0VaJdhhcC1fbAgdv1kfowoblC','2020-03-23 14:34:06.702846','2020-03-23 14:34:06.702846');
INSERT INTO users VALUES(2,'test2','bbb@bbb.bbb','$2a$12$MIqVsKUDLh6XCB0/fFvDZ.EVMnKMAWiuqAR0f0ow1FG9YKhlCkro2','2020-03-23 14:43:43.896164','2020-03-23 14:43:43.896164');
COMMIT;
