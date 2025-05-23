create table Dificutad (idDificultad integer not null, nombreDificultad varchar(255) not null, primary key (idDificultad));
create table Estatus (idEstatus integer not null, nombreEstatus varchar(255), primary key (idEstatus));
create table Maquina (idMaquina integer not null, fk_idEstatus integer, modeloMaquina varchar(255), noSerie varchar(255), fk_idMarca integer, fk_idProcesoPlanta integer, primary key (idMaquina));
create table Marca (idMarca integer not null, nombreMarca varchar(255), primary key (idMarca));
create table Plantas (colorPlanta varchar(255) not null, nombrePlanta varchar(255), superficie float4, primary key (colorPlanta));
create table Proceso (idProceso integer not null, nombreProceso varchar(255), fk_idDificultad integer, primary key (idProceso));
create table ProcesoPlanta (idProcesoPlanta integer not null, fk_colorPlanta varchar(255), fk_idProceso integer, primary key (idProcesoPlanta));
create table Tecnico (dni integer not null, apellidoTecnico1 varchar(255) not null, apellidoTecnico2 varchar(255) not null, fechaNacimiento integer not null, nombreTecnico varchar(255) not null, telefonoTecnico1 varchar(255) not null, telefonoTecnico2 varchar(255), telefonoTecnico3 varchar(255), primary key (dni));
create table Turno (idTurno integer not null, horaFin integer, horaInicio integer, nombreTurno varchar(255), primary key (idTurno));
create sequence Dificultad_seq start with 1 increment by 1;
create sequence Estatus_seq start with 1 increment by 1;
create sequence Maquina_seq start with 1 increment by 1;
create sequence Marca_seq start with 1 increment by 1;
create sequence Proceso_seq start with 1 increment by 1;
create sequence ProcesoPlanta_seq start with 1 increment by 1;
create sequence Tecnico_seq start with 1 increment by 1;
create sequence Turno_seq start with 1 increment by 1;
alter table if exists Maquina add constraint FKhnymq4884rk59oae0ib1tg4s0 foreign key (fk_idMarca) references Marca;
alter table if exists Maquina add constraint FKfweajacn88kp2fgc6q9cpmka5 foreign key (fk_idProcesoPlanta) references ProcesoPlanta;
alter table if exists Maquina add constraint FKfwasdscaAEesa2fgc6asdaka5 foreign key (fk_idEstatus) references Estatus;
alter table if exists Proceso add constraint FKno4cqn0eeq2d35eclt3hfkbrf foreign key (fk_idDificultad) references Dificutad;
alter table if exists ProcesoPlanta add constraint FK5lcdines9ip3hwk3xc2klpnu6 foreign key (fk_colorPlanta) references Plantas;
alter table if exists ProcesoPlanta add constraint FKtpp66mefxlmfwpo7v55q2wfrt foreign key (fk_idProceso) references Proceso;
