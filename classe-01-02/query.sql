DROP TABLE IF EXISTS autores;

CREATE TABLE autores(
  id serial PRIMARY KEY,
  nome text NOT NULL,
  idade smallint
);

DROP TABLE IF EXISTS livros;

CREATE TABLE livros(
  id serial PRIMARY KEY,
  autor_id integer NOT NULL,
  nome text NOT NULL,
  editora varchar(100),
  genero varchar(50) NOT NULL,
  data_publicacao date,
  foreign key (autor_id) references autores(id)
);


DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios(
  id serial PRIMARY KEY,
  nome varchar(50) NOT NULL UNIQUE,
  idade smallint,
  email varchar(50) NOT NULL UNIQUE,
  telefone varchar(13),
  cpf varchar(11) NOT NULL UNIQUE
  
 );

DROP TABLE IF EXISTS emprestimos;

CREATE TABLE  emprestimos(
  id serial PRIMARY KEY,
  usuario_id integer NOT NULL UNIQUE,
  livro_id integer NOT NULL UNIQUE,
  status boolean DEFAULT TRUE,
  foreign key(usuario_id) references usuarios(id),
  foreign key(livro_id) references livros(id)

);

alter table emprestimos add column status varchar(10) ;
