WITH sent_cte AS (
    SELECT user_id_sender, user_id_receiver, date
    FROM fb_friend_requests
    WHERE action = 'sent'
    ),
    accepted_cte AS (
    SELECT user_id_sender, user_id_receiver, date
    FROM fb_friend_requests
    WHERE action = 'accepted'
    )
    
SELECT sent_cte.date, COUNT(accepted_cte.date) / COUNT(sent_cte.date) :: decimal AS percentage
FROM sent_cte
LEFT JOIN accepted_cte 
    ON sent_cte.user_id_sender = accepted_cte.user_id_sender 
    AND sent_cte.user_id_receiver = accepted_cte.user_id_receiver
GROUP BY sent_cte.date
