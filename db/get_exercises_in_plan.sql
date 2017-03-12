#gets all columns for all exercises within a given plan, example is women's beginner
select distinct exercises.*
from exercises, workout_day, workout_plan
where plan_id = 2
and (workout_day_id = fk_workout_sun or workout_day_id = fk_workout_mon or workout_day_id = fk_workout_tue or workout_day_id = fk_workout_wed or workout_day_id = fk_workout_thu or workout_day_id = fk_workout_fri or workout_day_id = fk_workout_sat)
and (fk_ex1_id = exercise_id or fk_ex2_id = exercise_id or fk_ex3_id = exercise_id or fk_ex4_id = exercise_id or fk_ex5_id = exercise_id or fk_ex6_id = exercise_id or fk_ex7_id = exercise_id or fk_ex8_id = exercise_id or fk_ex9_id = exercise_id or fk_ex10_id = exercise_id)
order by name