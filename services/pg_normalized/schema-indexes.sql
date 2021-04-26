BEGIN;
CREATE INDEX idx_tweet_tag_id_tweets ON tweet_tags(id_tweets);
CREATE INDEX idx_tweets_id_tweets ON tweets(id_tweets);
CREATE INDEX idx_tweet_tag_tag ON tweet_tags(tag);
CREATE INDEX idx_tweets_texts ON tweets USING GIN(to_tsvector('english',text));
COMMIT;
