USE testDB;

#First select is just wrong syntax, was trying to remember how sql worked
#select *  from jsa_form,weather,hazard where ticket_num = 1 and weather_id.jsa_form = weather_id.weather and hazard_id.jsa_form = hazard_id.hazard;

#this is what I think a general form query will look for someone pulling info/form data from the database
select * from jsa_form, users, weather, hazard where jsa_form.user_id = users.user_id and jsa_form.weather_id = weather.weather_id and jsa_form.hazard_id = hazard.hazard_id;
