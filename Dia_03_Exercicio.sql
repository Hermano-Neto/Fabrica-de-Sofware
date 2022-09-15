create database ExercicioFabrica;
use ExercicioFabrica;

create table Medico(
	CRM int,
    cpf int unique,
    sexo char(1),
    nome varchar(60),
    
    primary key (CRM)
);

alter table Medico add column especializacao varchar(30);

insert into Medico(CRM, cpf, sexo, nome, especializacao)
value ('123', '1234561', 'M', 'Hermano Neto', 'Ortopedista');

insert into Medico(CRM, cpf, sexo, nome, especializacao)
value ('124', '1234562', 'F', 'Maria Eduarda', 'Cardiologista');

insert into Medico(CRM, cpf, sexo, nome, especializacao)
value (125, 1234563, 'F', 'Maria Clara', 'Cardiologista');

select * from Medico;
