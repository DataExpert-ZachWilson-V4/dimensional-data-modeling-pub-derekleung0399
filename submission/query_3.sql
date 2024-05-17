-- Note this table contains 2 SCDs: quality_class & is_active, and the former doesn't change unless the latter changes
-- note start/end/current date is actually year, following the naming conventions of hw readme

CREATE TABLE zachwilson.nba_player_scd (
  actor_id VARCHAR(9),
  quality_class VARCHAR(7),
  is_active BOOLEAN,
  start_date INTEGER,
  end_date INTEGER,
  current_year INTEGER
)
WITH
  (
    FORMAT = 'PARQUET',
    partitioning = ARRAY['current_year']
  )
