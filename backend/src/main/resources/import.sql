INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);


INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://w7.pngwing.com/pngs/797/100/png-transparent-course-training-class-professional-certification-education-courses-miscellaneous-angle-business-thumbnail.png', 'https://p.kindpng.com/picc/s/191-1918594_switch-course-grey-arrows-clip-art-png-re.png');

INSERT INTO tb_offer(edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T3:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T3:00Z', 1);
INSERT INTO tb_offer(edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T3:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T3:00Z', 1);

INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTM', 'Trilha principal do curso', 1, 'https://p.kindpng.com/picc/s/191-1918594_switch-course-grey-arrows-clip-art-png-re.png', 1, 1);
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Trilha principal do curso', 2, 'https://p.kindpng.com/picc/s/191-1918594_switch-course-grey-arrows-clip-art-png-re.png', 2, 1);
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES ('Lives exclusivas para a turma', 'Trilha principal do curso', 3, 'https://p.kindpng.com/picc/s/191-1918594_switch-course-grey-arrows-clip-art-png-re.png', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Cap??tulo 1', 'Neste Cap??tulo vamos come??ar', 1, 'https://p.kindpng.com/picc/s/191-1918594_switch-course-grey-arrows-clip-art-png-re.png', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Cap??tulo 2', 'Neste Cap??tulo vamos continuar', 2, 'https://p.kindpng.com/picc/s/191-1918594_switch-course-grey-arrows-clip-art-png-re.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Cap??tulo 3', 'Neste Cap??tulo vamos finalizar', 3, 'https://p.kindpng.com/picc/s/191-1918594_switch-course-grey-arrows-clip-art-png-re.png', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);


INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do cap??tulo 1', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=sqbqoR-lMf8');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do cap??tulo 1', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=sqbqoR-lMf8');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do cap??tulo 1', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=sqbqoR-lMf8');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do cap??tulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Fazer um trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z');

INSERT INTO tb_lesson_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lesson_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);