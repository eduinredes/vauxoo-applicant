-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

create domain Type_name varchar(100);

CREATE TABLE employee_department (
	id integer not null,
	name Type_name not null,
	description varchar(500) not null,
	primary key(id)
);

CREATE TABLE employee (
	id integer not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	id_department integer not null,
	primary key(id),
	foreign key(id_department) references employee_department(id)
);

/*insercion de datos */
/*employee_department*/
insert into employee_department (id, name, description)
	values (1, 'Integridad Informática', 'Dedicada a la supervición y mantenimineto de información');

insert into employee_department (id, name, description)
	values (2, 'Seguridad Informática', 'Dedicada al control y protección de la información');

insert into employee_department (id, name, description)
	values (3, 'Infraestructura', 'Dedicada al levantamiento y mantenimiento de infraestructura interna');

insert into employee_department (id, name, description)
	values (4, 'Servicios', 'Dedicada a la intregación de servicios de terceros y privados');

insert into employee_department (id, name, description)
	values (5, 'Departamento de Software', 'Departamento de desarrollo de software y SaaS');

insert into employee_department (id, name, description)
	values (6, 'Departamento de investigación', 'Dedicado al desarrollo e integración de tecnologías emergentes');

/*employee*/
insert into employee (id, first_name, last_name, id_department)
	values (1, 'Eduin', 'López', 1);

insert into employee (id, first_name, last_name, id_department)
	values (2, 'José', 'Paz', 2);

insert into employee (id, first_name, last_name, id_department)
	values (3, 'Julia', 'Gutierrez', 3);

insert into employee (id, first_name, last_name, id_department)
	values (4, 'William', 'Ruth', 4);



-- ...
