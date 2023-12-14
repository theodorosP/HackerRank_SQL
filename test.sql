USE mysql;
drop table People;
create table People(
	ID int,
	FName varchar(255),
	LName varchar(255),
	city varchar(255)
);

insert into People values(10, "Theodoros", "Pan", "Orlando");
insert into People values(10, "Aheodoros", "Pan", "Orlando");
insert into People values(20, "TheO", "Pn", "Orlando");
insert into People values(30, "T", "Pan", "Orlando");
insert into People values(40, "TO", "Pan", "NY");
insert into People values(50, "ThO", "n", "Orlando");
insert into People values(60, "Th", "Pa", "Orlando");
insert into People values(30, "A", "Pan", "Orlando");
insert into People values(45, "A", "Pan", "Orlando");
insert into People values(46, "A", "Pan", "Orlando");

;


select sum(ID) from People where ID >40 and ID < 50;
