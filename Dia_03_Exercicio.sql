create database ExercicioFabrica;
use ExercicioFabrica;

create table Medico(
	CRM int,
    cpf int unique,
    sexo enum('M', 'F'),
    nome varchar(60),
    
    primary key (CRM)
);

alter table Medico add column especializacao varchar(30);

create table Pasciente(
	CPF int,
    nome int,
    idade tinyint(3),
    sexo enum('M', 'F'),
    CRM_Medico int,
    /* Levando em consideração que o pasciente vai a apenas um medico,
     ou seja, relacionamento de n-1 */
    foreign key (CRM_Medico) references Medico(CRM),
    primary key (CPF, CRM_Medico)
);

insert into Medico(CRM, cpf, sexo, nome, especializacao)
value ('123', '1234561', 'M', 'Hermano Neto', 'Ortopedista');

insert into Medico(CRM, cpf, sexo, nome, especializacao)
value ('124', '1234562', 'F', 'Maria Eduarda', 'Cardiologista');

insert into Medico(CRM, cpf, sexo, nome, especializacao)
value (125, 1234563, 'F', 'Maria Clara', 'Cardiologista');



