/*
 * Calculates the languages that commonly use the hashtag #coronavirus
 */
SELECT
    lang,
    COUNT(*) AS count
FROM (
    SELECT DISTINCT
	data->>'id',
	data->>'lang' AS lang
    FROM tweets_jsonb
    WHERE (data->'entities'->'hashtags') @> '[{"text": "coronavirus"}]' OR
    (data->'extended_tweet'->'entities'->'hashtags') @> '[{"text": "coronavirus"}]'
) result
GROUP BY lang 
    ORDER BY count DESC,lang;
