drop table user;

create table user ( 
  id SERIAL PRIMARY KEY
  , login_id varchar (255) UNIQUE NOT NULL
  , name varchar (255) NOT NULL
  , birth_date DATE NOT NULL
  , password varchar (255) NOT NULL
  , create_date DATETIME NOT NULL
  , update_date DATETIME NOT NULL
);

INSERT INTO user (login_id,name,birth_date,password,create_date,update_date) VALUES ('admin','ä«óùé“','2008-01-02','kawa','1000-01-01 00:00:00','1000-01-01 00:00:00');

select * from user
