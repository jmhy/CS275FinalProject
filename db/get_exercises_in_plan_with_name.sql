#gets all columns for all the workout days for a given plan, example is women's beginner
select distinct workout_day.*, e1.name ex1, e2.name ex2, e3.name ex3, e4.name ex4, e5.name ex5, e6.name ex6, e7.name ex7, e8.name ex8, e9.name ex9, e10.name ex10
from workout_day
left join exercises e1 on (fk_ex1_id=e1.exercise_id)
left join exercises e2 on (fk_ex2_id=e2.exercise_id)
left join exercises e3 on (fk_ex3_id=e3.exercise_id)
left join exercises e4 on (fk_ex4_id=e4.exercise_id)
left join exercises e5 on (fk_ex5_id=e5.exercise_id)
left join exercises e6 on (fk_ex6_id=e6.exercise_id)
left join exercises e7 on (fk_ex7_id=e7.exercise_id)
left join exercises e8 on (fk_ex8_id=e8.exercise_id)
left join exercises e9 on (fk_ex9_id=e9.exercise_id)
left join exercises e10 on (fk_ex10_id=e10.exercise_id)
inner join workout_plan p1 on (workout_day_id=p1.fk_workout_sun or workout_day_id=p1.fk_workout_mon or workout_day_id=p1.fk_workout_tue or workout_day_id=p1.fk_workout_wed or workout_day_id=p1.fk_workout_thu or workout_day_id=p1.fk_workout_fri or workout_day_id=p1.fk_workout_sat) and p1.plan_id=1