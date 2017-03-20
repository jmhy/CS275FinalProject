#m_id is the muscle's id based on values in the muscles table
#example searches for all exercises that work the specified muscle
set @m_id = 1;
select * from exercises
where fk_muscle1_id = @m_id or fk_muscle2_id = @m_id or fk_muscle3_id = @m_id or fk_muscle4_id = @m_id or fk_muscle5_id = @m_id