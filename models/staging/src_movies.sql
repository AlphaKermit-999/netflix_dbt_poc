-- WITH raw_movies AS (
--     SELECT * FROM MOVIELENS.RAW.RAW_MOVIES
-- )
-- SELECT
--     movieId AS movie_id,
--     title,
--     genres
-- FROM raw_movies

WITH raw_movies AS (
    SELECT * FROM {{sources("netflix", "r_movies")}}
)
SELECT
    movieId AS movie_id,
    title,
    genres
FROM raw_movies