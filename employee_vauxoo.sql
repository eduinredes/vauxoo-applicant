-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

create domain Type_name varchar(100);


/*creacion de las tablas*/
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
insert into employee_department (id, name, description) values
	(1, 'Integridad Informática', 'Dedicada a la supervición y mantenimineto de información') ,
	(2, 'Seguridad Informática', 'Dedicada al control y protección de la información'),
	(3, 'Infraestructura', 'Dedicada al levantamiento y mantenimiento de infraestructura interna'),
	(4, 'Servicios', 'Dedicada a la intregación de servicios de terceros y privados'),
	(5, 'Departamento de Software', 'Departamento de desarrollo de software y SaaS'),
	(6, 'Departamento de investigación', 'Dedicado al desarrollo e integración de tecnologías emergentes');

/*employee*/
insert into employee (id, first_name, last_name, id_department) values 
	(1, 'Eduin', 'López', 1),
 	(2, 'José', 'Paz', 2),
	(3, 'Julia', 'Gutierrez', 3),
	(4, 'William', 'Ruth', 4);

/*creacion de las tablas*/
CREATE TABLE employee_hobby (
	id integer not null,
	name Type_name not null,
	description varchar(500) not null,
	primary key(id)
);

CREATE TABLE employees_and_hobbies (
	id_employee integer not null,
	id_hobby integer not null,
	foreign key (id_employee) references employee(id) on update cascade on delete cascade,
	foreign key (id_hobby) references employee_hobby(id) on update cascade on delete cascade
);

/*insercion de datos */
/*employee_hobby*/
insert into employee_hobby (id, name, description) values
 	(1, 'Natación', 'Deporte acuático'),
	(2, 'Dibujo Tradicional', 'Recreación de escenarios mediante trazos usando herramientas tradicionales'),
	(3, 'Cuatrista', 'Practicante dle folklore venezolano usando el Cuatro como instrumento'),
 	(4, 'Paracaidista', 'Deporte extremo que consiste en el salto de personas desde aeronaves usando paracaidas');

/*employees_and_hobbies*/
insert into employees_and_hobbies (id_employee, id_hobby) values 
	(1, 2),
 	(1, 1),
 	(2, 3),
 	(2, 4),
 	(3, 2),
	(3, 4),
	(4, 1),
	(4, 4);


-- ...
