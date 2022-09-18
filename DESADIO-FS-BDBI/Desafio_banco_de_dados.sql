create database Armarinho;
use Armarinho;

create table Clientes(
	id numeric,
    nome varchar(70),
    street varchar(70),
    city varchar (50),
    state char(2),
    credit_limit decimal(7,2),
    
    primary key (id)
);

insert into Clientes
(id, nome, street, city, state, credit_limit)
values
(1, 'Pedro Augusto da Rocha', 'Rua Pedro Carlos', 'Porto Alegre', 'RS', 700.00),
(2, 'Antonio Carlos Mamel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', 3500.50),
(3, 'Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 4000.00),
(4, 'Jane Ester', 'Av 7 de Setembro', 'Erechin', 'RS', 800.00),
(5, 'Marcos Antônio dos Santos', 'Av Farrapos', 'Porto Alegre', 'RS', 5250.25);

select * from Clientes;

insert into Clientes
(id, nome, street, city, state, credit_limit)
values
(6, 'Hermano José da Silveira Farias Neto', 'Av Infante dom Henrique', 'João Pessoa', 'PB', 1250.00),
(7, 'Nivaldo Farias Garcia', 'Av Infante dom Henrique', 'João Pessoa', 'PB', 3572.50),
(8, 'Maria Eduarda Wanderley Cabral Carvalho', 'Av Almirante tamandare', 'São Paulo', 'SP', 9600.00);

select * from Clientes;

select street, city, state from Clientes where state in ('MG', 'SP', 'RJ');
