#gets all columns for all the workout days for a given plan, example is women's beginner
select workout_day.*
from workout_day, workout_plan
where plan_id = 2
and (workout_day_id = fk_workout_sun or workout_day_id = fk_workout_mon or workout_day_id = fk_workout_tue or workout_day_id = fk_workout_wed or workout_day_id = fk_workout_thu or workout_day_id = fk_workout_fri or workout_day_id = fk_workout_sat)