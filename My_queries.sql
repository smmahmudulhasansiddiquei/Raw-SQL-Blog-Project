1.  SELECT * FROM posts;

2.  SELECT posts.title, users.name AS author_name
    FROM posts
    INNER JOIN users ON posts.author_id = users.id;

3.  INSERT INTO posts (title, slug, body, author_id) 
    VALUES ('Fourth Post', 'fourth-post', 'This is fourth post', 2);

4.  UPDATE posts SET title = "Updated First Post" WHERE id = 1;

5.  SELECT users.name , COUNT(users.id) AS total_post 
    FROM users 
    LEFT JOIN posts ON users.id = posts.author_id 
    GROUP BY users.id;

6.  SELECT * FROM posts
    ORDER BY created_at DESC;

7.  SELECT * FROM posts
    ORDER BY created_at DESC
    LIMIT 2;

8.  SELECT posts.title, comments.body AS comment
    FROM posts
    INNER JOIN comments ON posts.id = comments.post_id;

9.  SELECT posts.title , GROUP_CONCAT(tags.name) AS tags 
    FROM posts 
    INNER JOIN post_tag ON posts.id = post_tag.post_id 
    INNER JOIN tags on post_tag.post_id = tags.id 
    GROUP BY posts.id;
