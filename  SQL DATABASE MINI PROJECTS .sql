
SELECT * FROM videos AS v JOIN reviews AS r ON v.video_id=r.video_id;


SELECT v.title, r.name, r.rating, r.short_review 
FROM videos AS v JOIN reviews AS r ON v.video_id=r.video_id
WHERE (r.rating=4);


SELECT v.title, r.name, r.rating, r.short_review 
FROM videos AS v JOIN reviews AS r ON v.video_id=r.video_id
WHERE (v.video_id=1);
