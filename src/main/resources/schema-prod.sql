CREATE TABLE `user` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(25) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE `groupe` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(25) NOT NULL
);

CREATE TABLE `group_user` (
    group_id INT NOT NULL,
    user_id INT NOT NULL ,
    PRIMARY KEY (group_id, user_id),
    FOREIGN KEY (group_id) REFERENCES bscts78dfuswnzqa1gko.groupe(id),
    FOREIGN KEY (user_id) REFERENCES bscts78dfuswnzqa1gko.user(id)
);

CREATE TABLE `group_admin` (
    group_id INT NOT NULL,
    user_id INT NOT NULL ,
    PRIMARY KEY (group_id, user_id),
    FOREIGN KEY (group_id) REFERENCES bscts78dfuswnzqa1gko.groupe(id),
    FOREIGN KEY (user_id) REFERENCES bscts78dfuswnzqa1gko.user(id)
);

CREATE TABLE `event` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    place VARCHAR(255),
    hour TIME,
    date DATE,
    description VARCHAR(255)
);

CREATE TABLE `group_event` (
    group_id INT NOT NULL,
    event_id INT NOT NULL,
    PRIMARY KEY (group_id, event_id),
    FOREIGN KEY (group_id) REFERENCES bscts78dfuswnzqa1gko.groupe(id),
    FOREIGN KEY (event_id) REFERENCES bscts78dfuswnzqa1gko.event(id)
);

CREATE TABLE `event_user_participate` (
    event_id INT NOT NULL,
    user_id INT NOT NULL,
    PRIMARY KEY (event_id, user_id),
    FOREIGN KEY (event_id) REFERENCES bscts78dfuswnzqa1gko.event(id),
    FOREIGN KEY (user_id) REFERENCES bscts78dfuswnzqa1gko.user(id)
);

CREATE TABLE `discussion` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    group_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES bscts78dfuswnzqa1gko.groupe(id)
);

CREATE TABLE `message` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    discussion_id INT NOT NULL,
    user_id INT NOT NULL,
    date DATETIME NOT NULL,
    message VARCHAR(2048) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES bscts78dfuswnzqa1gko.user(id),
    FOREIGN KEY (discussion_id) REFERENCES bscts78dfuswnzqa1gko.discussion(id)
);


CREATE TABLE `debt` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    payed_by_id INT NOT NULL,
    payed_for_id INT NOT NULL,
    group_id INT NOT NULL,
    amount FLOAT NOT NULL,
    comment VARCHAR(25) NOT NULL,
    done BIT,
    FOREIGN KEY (group_id) REFERENCES bscts78dfuswnzqa1gko.groupe(id),
    FOREIGN KEY (payed_by_id) REFERENCES bscts78dfuswnzqa1gko.user(id),
    FOREIGN KEY (payed_for_id) REFERENCES bscts78dfuswnzqa1gko.user(id)
);

CREATE TABLE `survey` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type_survey VARCHAR(25),
    title VARCHAR(25)
);

CREATE TABLE `survey_option` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(25) NOT NULL,
    nb_votes INT NOT NULL
);

CREATE TABLE `survey_survey_option`(
    survey_id INT NOT NULL,
    option_id INT NOT NULL,
    PRIMARY KEY (survey_id, option_id),
    FOREIGN KEY (survey_id) REFERENCES bscts78dfuswnzqa1gko.survey(id),
    FOREIGN KEY (option_id) REFERENCES bscts78dfuswnzqa1gko.survey_option(id)
);

CREATE TABLE `survey_user_answered` (
    survey_id INT NOT NULL,
    user_id INT NOT NULL,
    PRIMARY KEY (survey_id, user_id),
    FOREIGN KEY (survey_id) REFERENCES bscts78dfuswnzqa1gko.survey(id),
    FOREIGN KEY (user_id) REFERENCES bscts78dfuswnzqa1gko.user(id)
);

CREATE TABLE `event_survey` (
    survey_id INT NOT NULL,
    event_id INT NOT NULL,
    PRIMARY KEY (survey_id, event_id),
    FOREIGN KEY (survey_id) REFERENCES bscts78dfuswnzqa1gko.survey(id),
    FOREIGN KEY (event_id) REFERENCES bscts78dfuswnzqa1gko.event(id)

);

CREATE TABLE `survey_option_user` (
    survey_option_id INT NOT NULL,
    user_id INT NOT NULL,
    PRIMARY KEY (survey_option_id, user_id),
    FOREIGN KEY (survey_option_id) REFERENCES bscts78dfuswnzqa1gko.survey_option(id),
    FOREIGN KEY (user_id) REFERENCES bscts78dfuswnzqa1gko.user(id)
);

CREATE TABLE `album` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    event_id INT NOT NULL,
    group_id INT NOT NULL,
    FOREIGN KEY (event_id) REFERENCES bscts78dfuswnzqa1gko.event(id),
    FOREIGN KEY (group_id) REFERENCES bscts78dfuswnzqa1gko.groupe(id)
);

CREATE TABLE `photo` (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    src VARCHAR(512) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES bscts78dfuswnzqa1gko.album(id)
);
