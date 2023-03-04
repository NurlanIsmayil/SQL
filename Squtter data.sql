select * from DataR 

select count(mtr) as total_drivers from DataR  

select district, sum(mtr) as total_distance from DataR 
group by district order by sum(mtr)

select top 3 district, sum(mtr) as Total_distance from DataR
group by district order by sum(mtr)

select district, COUNT(mtr) as total_drivers from DataR 
group by district order by COUNT(mtr) desc

select district, COUNT(mtr) as total_drivers from DataR group by 
district having count(mtr)>10000 order by count(mtr) desc 

select started_at as day, count(ride_id) drivers from DataR group by 
started_at order by drivers desc

select started_at as pick_day,count(ride_id) drivers from DataR 
group by started_at order by pick_day

select  district, started_at as pick_day,count(ride_id) drivers from DataR 
group by district ,started_at order by drivers desc

SELECT top 1 district as max_district,COUNT(ride_id) total FROM DataR 
GROUP BY district order by COUNT(ride_id) desc

SELECT top 1 district as min_district,COUNT(ride_id) total FROM DataR 
GROUP BY district order by COUNT(ride_id) asc

select member_casual as Memebers, sum(mtr) as Total_mtr, count(ride_id) Total_drivers from DataR
where member_casual = 'member' group by member_casual

select member_casual as Members, sum(mtr) as Total_mtr, count(ride_id) Total_drivers from DataR
where member_casual = 'casual' group by member_casual