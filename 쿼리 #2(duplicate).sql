INSERT INTO membertbl VALUES('KHD','강후덜','한국') 
ON DUPLICATE KEY UPDATE userName = '강후덜',addr='미국';
INSERT INTO membertbl VALUES ('DJM','동짜몽','중국')
ON DUPLICATE KEY UPDATE userName = '동짜몽',addr='일본';
SELECT * FROM membertbl;
/*데이터가 삽입할 때 기본키가 중복되면 새로 갑입한 데이터로 내용이 변경되게 하기*/
