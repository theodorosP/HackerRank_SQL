USE mysql;
drop table People;
create table People(
	ID int,
	FName varchar(255),
	LName varchar(255),
	city varchar(255)
);

insert into People values(10, "Theo", "Pan", "Orlando");
insert into People values(20, "Theo", "Pn", "Orlando");
insert into People values(30, "T", "Pan", "Orlando");
insert into People values(40, "To", "Pan", "NY");
insert into People values(50, "Tho", "n", "Orlando");
insert into People values(60, "Th", "Pa", "Orlando");

select ID, FName from People where FName = "Theo";
