-- select the most recent submit info

select name, category, level, result, max(time) as time from

(select * from

(select problem_id, result, id as submit_id , time from submits where user_id = 1) t1,

(select id, name, category, level from problems) t2

where problem_id = id) t3 group by problem_id