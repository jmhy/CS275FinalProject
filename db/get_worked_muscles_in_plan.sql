#example gets muscles worked by women's beginner plan
select distinct muscles.m_id, muscles.name, muscles.img_filepath
from exercises, muscles, workout_day, workout_plan
where (fk_workout_sun = workout_day_id or fk_workout_mon = workout_day_id or fk_workout_tue = workout_day_id or fk_workout_wed = workout_day_id or fk_workout_thu = workout_day_id or fk_workout_fri = workout_day_id or fk_workout_sat = workout_day_id)
and (fk_ex1_id = exercise_id or fk_ex2_id = exercise_id or fk_ex3_id = exercise_id or fk_ex4_id = exercise_id or fk_ex5_id = exercise_id or fk_ex6_id = exercise_id or fk_ex7_id = exercise_id or fk_ex8_id = exercise_id or fk_ex9_id = exercise_id or fk_ex10_id = exercise_id)
and (fk_muscle1_id = m_id or fk_muscle2_id = m_id or fk_muscle3_id = m_id or fk_muscle4_id = m_id or fk_muscle5_id = m_id or fk_muscle6_id = m_id)
and plan_id = 2
order by name;