INSERT INTO `user` (id, username, email) VALUES
(1, 'awatrelos', 'amandine.watrelos@gmail.com'),
(2, 'mgallardo', 'marie.gallardo@outlook.fr'),
(3, 'pierre59100', 'pierre.legrand@gmail.com'),
(4, 'pierrehenry', 'pierreh@gmail.com'),
(5, 'pierrick', 'pierrick59@gmail.com');


INSERT INTO `groupe` (id, name) VALUES
(1, 'Amis lycée'),
(2, 'Collègues'),
(3, 'Master 2'),
(4, 'Potes fac');

INSERT INTO `group_user` (group_id, user_id) VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 1),
(3, 1),
(3, 2),
(4, 1),
(4, 2);

INSERT INTO `group_admin` (group_id, user_id) VALUES
(1, 1);

INSERT INTO `event` (id, name, place, hour, date, description) VALUES
(1, 'Crémaillière Marie', 'Merris', '20:00:00', '2020-02-14', 'Bienvenue dans mon nouvel appart!'),
(2, 'Laser Game', 'Lille', '18:00:00', '2020-03-23', 'Laser game du futur');

INSERT INTO `group_event` (group_id, event_id) VALUES
(4, 1),
(4, 2);

INSERT INTO `discussion` (id, group_id) VALUES
(1, 1),
(2, 3),
(3, 2),
(4, 4);

INSERT INTO `message` (id, discussion_id, user_id, date, message) VALUES
(1, 1, 1, '2020-02-14 16:15:00', 'Coucou les copains du lycée! J\'ai crée ce groupe pour qu\'on s\'organise plus facilement dans nos sorties :)'),
(2, 1, 2, '2020-02-14 18:47:00', 'Hey ! Cool merci Amandine. D\'ailleurs ça fait un bail qu\'on s\'est pas vus donc je pensais aller boire un verre prochainement! Je crée un événement, mettez vos dispos dessus si vous êtes chauds ;)'),
(3, 2, 2, '2020-02-27 21:56:00', 'Hello les potes ! Bientôt fini ce master, on fête ça après les exams? :)'),
(4, 1, 1, '2020-02-15 08:02:00', 'Yes bonne idée ^^');

INSERT INTO `debt` (id, payed_by_id, payed_for_id, amount, comment, done, group_id) VALUES
(1, 2, 1, 15.0, 'ciné + macdo', 0, 1),
(2, 2, 4, 7.5, 'mojito velvet', 1, 1),
(3, 4, 1, 5.0, 'courses raclette', 1, 2),
(4, 1, 4, 25.0, 'accrobranche', 0, 3);

INSERT INTO `album` (id, event_id, group_id) VALUES
(1, 1, 4),
(2, 2, 4);

INSERT INTO `photo` (id, album_id, src) VALUES
(1, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRanJq6gTFt8HkYqIK5-NGVFtyPh9bEEjgSOtZPhmhmc5tuilSn'),
(2, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRanJq6gTFt8HkYqIK5-NGVFtyPh9bEEjgSOtZPhmhmc5tuilSn'),
(3, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRanJq6gTFt8HkYqIK5-NGVFtyPh9bEEjgSOtZPhmhmc5tuilSn'),
(4, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRanJq6gTFt8HkYqIK5-NGVFtyPh9bEEjgSOtZPhmhmc5tuilSn'),
(5, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRanJq6gTFt8HkYqIK5-NGVFtyPh9bEEjgSOtZPhmhmc5tuilSn'),
(6, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRanJq6gTFt8HkYqIK5-NGVFtyPh9bEEjgSOtZPhmhmc5tuilSn'),
(7, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRanJq6gTFt8HkYqIK5-NGVFtyPh9bEEjgSOtZPhmhmc5tuilSn'),
(8, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRanJq6gTFt8HkYqIK5-NGVFtyPh9bEEjgSOtZPhmhmc5tuilSn'),
(9, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRanJq6gTFt8HkYqIK5-NGVFtyPh9bEEjgSOtZPhmhmc5tuilSn'),
(10, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRanJq6gTFt8HkYqIK5-NGVFtyPh9bEEjgSOtZPhmhmc5tuilSn'),
(11, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg'),
(12, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg'),
(13, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg'),
(14, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg'),
(15, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg'),
(16, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg'),
(17, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg'),
(18, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg'),
(19, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg'),
(20, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg'),
(21, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg'),
(22, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg'),
(23, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg'),
(24, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg'),
(25, 2, 'https://www.guide-du-perigord.com/_bibli/annonces/7046/hd/no-limit-10.jpg');
