USE testDB;
show tables;

insert into users
values (0,"Steven Smith","Smithst","help123","Foremen", 20.20),
	   (1,"Jacob Tellep","jtellp","help123","Foremen", 40.20),
	   (2,"Sanish Rai","sanish.rai","help123","Foremen", 15.20);

insert into weather#once inserted this tables will not be adjusted unless the JSA form is changed
values (0,"Sun"),
	   (1,"Rain"),
       (2,"Overcast"),
       (3,"Windy"),
       (4,"Hail"),
       (5,"Snow");
       
insert into hazard #Another table that will not be changed unless the JSA form is changed
values (0,"Confined Space"),
(1,"Fall Protection"),
(2,"Sharp/Hot/Cold Surfaces"),
(3,"Electric Shock Hazard"),
(4,"Irritants-Respiratory/Skin"),
(5,"Envrionment Extremes"),
(6,"Pinch/Crush/Strike Hazard"),
(7,"Lifting Hazard"),
(8,"Short Services Employees"),
(9,"Fore or Explosion Potential"),
(10,"Potential Release of Energy"),
(11,"Elevated Work Load"),
(12,"Excavation"),
(13,"Hazardous Chemical Exposure"),
(14,"High Noise Levels"),
(15,"Water or Drowning Harzard");


insert into jsa_form #annoyingly long but right now what we need to do. Added a '^' symbol to define to designate each line break. So when using split() we will split at '^'.
values(1,"01/01/2020","HGCarte","Steven Smith","Fayetville Bridge",10,10,0,"123 broadway beckley wv 25801","10.021356541,111.01510,111121.13213",2,"1.no major steps to follow^","1.not potiental hazards^","not removing hazard",0,"SJS");