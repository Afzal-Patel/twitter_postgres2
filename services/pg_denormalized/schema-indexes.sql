CREATE INDEX idx2_text ON tweets_jsonb USING GIN(to_tsvector('english',data->>'text'));
CREATE INDEX idx3_et_full_text ON tweets_jsonb USING GIN(to_tsvector('english',(data->'extended_tweet'->>'full_text')));
CREATE INDEX idx1_et_hashtag ON tweets_jsonb USING GIN ((data->'extended_tweet'->'entities'->'hashtags'));
