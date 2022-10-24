#bd_biblioteca 

create table livro(
id_livro int not null auto_increment,
nome varchar(50),
palavra_chave varchar(50),
descricao varchar(500),
primary key(id_livro)
)default charset=utf8;

create table editora(
id_editora int not null auto_increment,
nome varchar(50),
telefone varchar(50),
endereco varchar(500),
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
data_emprestimo date,
data_devolucao date,
primary key(id_emprestimo)
)default charset=utf8;
