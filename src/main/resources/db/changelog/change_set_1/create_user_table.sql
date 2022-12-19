create table user (
                      id integer primary key auto_increment not null,
                      first_name varchar(100) not null,
                      name varchar(50) not null,
                      nick_name varchar(25) not null unique,
                      email varchar(255) not null unique,
                      password varchar(255) not null,
                      auth_type varchar(10) not null default 'APP',
                      constraint check_email_constraint CHECK (email like '%___@___%'),
                      constraint check_auth_type check (auth_type in ('GOOGLE', 'YANDEX', 'VK', 'APP'))
)