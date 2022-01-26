-- Tumade DANSO 


CREATE TABLE Videos (
      video_id INT PRIMARY KEY,
      Title VARCHAR(50) NOT NULL,
      Length INT NULL,
      Url VARCHAR(100) NOT NULL
);


CREATE TABLE Reviews (
      review_number INT PRIMARY KEY,
      name VARCHAR(50) NOT NULL,
      rating INT NULL,
      short_review VARCHAR(100) NOT NULL,
      video_id INT NOT NULL	
);
