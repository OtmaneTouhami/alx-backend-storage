-- 3-glam_rock.sql

-- Assumes you have already loaded the metal_bands.sql dump,
-- which creates a table named `bands` with at least these columns:
--   name       INT,    -- band name
--   formed     INT,    -- year the band formed
--   split      INT,    -- year the band split (NULL if still active)
--   main_style VARCHAR   -- e.g. 'Glam rock', 'Thrash metal', etc.

SELECT
  name AS band_name,
  -- if `split` is NULL (still active), treat it as 2022; else use the split year
  (COALESCE(split, 2022) - formed) AS lifespan
FROM
  bands
WHERE
  main_style = 'Glam rock'
ORDER BY
  lifespan DESC;
