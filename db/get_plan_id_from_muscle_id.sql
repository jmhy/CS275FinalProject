#m_id is the muscle's id based on values in the muscles table
#example searches for plans that exercise the forearms
set @m_id = 5;
select plan_id
from exercises, workout_day, workout_plan
where (fk_muscle1_id = @m_id or fk_muscle2_id = @m_id or fk_muscle3_id = @m_id or fk_muscle4_id = @m_id or fk_muscle5_id = @m_id or fk_muscle6_id = @m_id)
and (fk_ex1_id = exercise_id or fk_ex2_id = exercise_id or fk_ex3_id = exercise_id or fk_ex4_id = exercise_id or fk_ex5_id = exercise_id or fk_ex6_id = exercise_id or fk_ex7_id = exercise_id or fk_ex8_id = exercise_id or fk_ex9_id = exercise_id or fk_ex10_id = exercise_id)
and (fk_workout_sun = workout_day_id or fk_workout_mon = workout_day_id or fk_workout_tue = workout_day_id or fk_workout_wed = workout_day_id or fk_workout_thu = workout_day_id or fk_workout_fri = workout_day_id or fk_workout_sat = workout_day_id)