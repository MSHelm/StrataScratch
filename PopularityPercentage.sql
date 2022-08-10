WITH user_union AS (
SELECT user1, user2 from facebook_friends
UNION
SELECT user2 AS user1, user1 AS user2 from facebook_friends /* Renaming to copy column 2 under column 1 and vice versa */
)

SELECT user1, count(user1)::float / (SELECT count(DISTINCT user1) FROM user_union) * 100
FROM user_union
GROUP BY user1
ORDER BY user1
