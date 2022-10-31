create database biblioteca;
use biblioteca;

create table livro(
id_livro int not null auto_increment,
cod_editora int,
nome varchar(50),
palavra_chave varchar(50),
descricao varchar(200),
primary key(id_livro)
)default charset=utf8;

create table editora(
id_editora int not null auto_increment,
cod_autor int,
cod_livro int,
nome varchar(50),
telefone varchar(50),
endereco varchar(50),
primary key(id_editora)
)default charset=utf8;

create table autor(
id_autor int not null auto_increment,
nome varchar(50),
telefone varchar(50),
endereco varchar(50),
primary key(id_autor)
)default charset=utf8;

create table usuario(
id_usuario int not null auto_increment,
nome varchar(50),
telefone varchar(50),
endereco varchar(50),
primary key(id_usuario)
)default charset=utf8;

create table emprestimo(
id_emprestimo int not null auto_increment,
cod_usuario int,
cod_livro int,
data_emprestimo date,
data_devolucao date,
primary key(id_emprestimo)
)default charset=utf8;

alter table emprestimo add constraint fk_usuario foreign key (cod_usuario) references usuario(id_usuario);
alter table emprestimo add constraint gk_usuario foreign key (cod_livro) references usuario(id_usuario);
alter table editora add constraint fk_editora foreign key (cod_autor) references autor(id_autor);
alter table editora add constraint gk_editora foreign key (cod_livro) references autor(id_autor);
alter table livro add constraint fk_livro foreign key (cod_editora) references editora(id_editora);

