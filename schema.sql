drop table if exists stories;
create table stories (
  s_id integer primary key autoincrement,
  title string not null,
  text string not null,
  n_id integer foreign key references nations(n_id)
);
drop table if exists nations;
create table nations (
  n_id integer primary key autoincrement,
  name string not null,
);
drop table if exists users;
create table users (
  u_id integer primary key autoincrement,
  age integer not null,
  gender char not null,
  origin string not null,
  residence string not null,
  language string not null,
  education string not null
);
drop table if exists responses;
create table responses (
  r_id integer primary key autoincrement,
  s_id integer foreign key references stories(s_id),
  n_id integer foreign key references nations(n_id),
  u_id integer foreign key references users(u_id),
  time timestamp
);