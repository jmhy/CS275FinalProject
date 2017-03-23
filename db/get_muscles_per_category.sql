set @category='front_torso';
select fk_muscle1_id, m1.name mn1, m1.img_filepath mi1, fk_muscle2_id, m2.name mn2, m2.img_filepath mi2, fk_muscle3_id, m3.name mn3, m3.img_filepath mi3, fk_muscle4_id, m4.name mn4, m4.img_filepath mi4
from muscle_categories
left join muscles m1 on (fk_muscle1_id=m1.m_id)
left join muscles m2 on (fk_muscle2_id=m2.m_id)
left join muscles m3 on (fk_muscle3_id=m3.m_id)
left join muscles m4 on (fk_muscle4_id=m4.m_id)
where muscle_categories.name=@category