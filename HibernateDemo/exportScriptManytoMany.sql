drop table if exists CATEGORIA;
drop table if exists DIFICULDADE;
drop table if exists PALAVRA;
drop table if exists PALAVRA_DIFICULDADE;
create table CATEGORIA (CATEGORIA_ID integer not null, CATEGORIA_DESCRICAO varchar(255), primary key (CATEGORIA_ID));
create table DIFICULDADE (DIFICULDADE_ID integer not null, DIFICULDADE_DESCRICAO varchar(255), primary key (DIFICULDADE_ID));
create table PALAVRA (PALAVRA_ID integer not null, PALAVRA_DESCRICAO varchar(255), DIFICULDADE_ID integer not null, primary key (PALAVRA_ID));
create table PALAVRA_DIFICULDADE (PALAVRA_ID integer not null, CATEGORIA_ID integer not null, primary key (PALAVRA_ID, CATEGORIA_ID));
alter table PALAVRA add constraint FKcs5uh3pkr3592cli2tu6xx730 foreign key (DIFICULDADE_ID) references DIFICULDADE (DIFICULDADE_ID);
alter table PALAVRA_DIFICULDADE add constraint FK2b5ljg1luy7gs71kqo8nnaps7 foreign key (CATEGORIA_ID) references CATEGORIA (CATEGORIA_ID);
alter table PALAVRA_DIFICULDADE add constraint FKq638it0kp2cpm4tjsybtwtis0 foreign key (PALAVRA_ID) references PALAVRA (PALAVRA_ID);
drop table if exists CATEGORIA;
drop table if exists DIFICULDADE;
drop table if exists PALAVRA;
drop table if exists PALAVRA_CATEGORIA;
create table CATEGORIA (CATEGORIA_ID integer not null, CATEGORIA_DESCRICAO varchar(255), primary key (CATEGORIA_ID)) type=MyISAM;
create table DIFICULDADE (DIFICULDADE_ID integer not null, DIFICULDADE_DESCRICAO varchar(255), primary key (DIFICULDADE_ID)) type=MyISAM;
create table PALAVRA (PALAVRA_ID integer not null, PALAVRA_DESCRICAO varchar(255), DIFICULDADE_ID integer not null, primary key (PALAVRA_ID)) type=MyISAM;
create table PALAVRA_CATEGORIA (PALAVRA_ID integer not null, CATEGORIA_ID integer not null, primary key (PALAVRA_ID, CATEGORIA_ID)) type=MyISAM;
alter table PALAVRA add constraint FKcs5uh3pkr3592cli2tu6xx730 foreign key (DIFICULDADE_ID) references DIFICULDADE (DIFICULDADE_ID);
alter table PALAVRA_CATEGORIA add constraint FKxcm0fnyjjjon840jrqoowc7g foreign key (CATEGORIA_ID) references CATEGORIA (CATEGORIA_ID);
alter table PALAVRA_CATEGORIA add constraint FKkxopj7w56l51673ogpea3uel3 foreign key (PALAVRA_ID) references PALAVRA (PALAVRA_ID);
