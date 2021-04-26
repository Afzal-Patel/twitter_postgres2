BEGIN;
CREATE INDEX idx_tweets_id_tweets ON tweets(id_tweets);
CREATE INDEX idx_tweet_tag_id_tweets ON tweet_tags(id_tweets);
CREATE INDEX idx_tag_tag_rev_primary ON tweet_tags(tag, id_tweets);
CREATE INDEX idx_tweets_text ON tweets USING GIN(to_tsvector('english',text));
COMMIT;
