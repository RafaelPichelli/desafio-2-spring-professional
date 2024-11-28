-- Seeding de Participantes.
INSERT INTO t_participantes(nome, email) VALUES ('José Silva','jose@gmail.com');
INSERT INTO t_participantes(nome, email) VALUES ('Tiago Faria','tiago@gmail.com');
INSERT INTO t_participantes(nome, email) VALUES ('Maria do Rosário','maria@gmail.com');
INSERT INTO t_participantes(nome, email) VALUES ('Teresa Silva','teresa@gmail.com');

-- Seeding de Categorias.
INSERT INTO t_categorias(descricao) VALUES ('Curso');
INSERT INTO t_categorias(descricao) VALUES ('Oficina');

--Seeding de Atividades.
INSERT INTO t_atividades(nome, descricao, preco, categoria_id) VALUES ('Curso de HTML', 'Aprenda HTML de forma prática', 80.00,1 );
INSERT INTO t_atividades(nome, descricao, preco, categoria_id) VALUES ('Oficina de Github', 'Controle versões de seus projetos', 50.00, 2);

-- Seeding de Blocos.
INSERT INTO t_blocos(inicio, fim, atividade_id) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-25T08:00:00Z',TIMESTAMP WITH TIME ZONE '2017-09-25T11:00:00Z', 1);
INSERT INTO t_blocos(inicio, fim, atividade_id) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-25T14:00:00Z',TIMESTAMP WITH TIME ZONE '2017-09-25T18:00:00Z', 2);
INSERT INTO t_blocos(inicio, fim, atividade_id) VALUES (TIMESTAMP WITH TIME ZONE '2017-09-26T08:00:00Z',TIMESTAMP WITH TIME ZONE '2017-09-26T11:00:00Z', 2);

-- Apicando o Relacionamento de Participantes a Atividades.
INSERT INTO t_participantes_atividades(participante_id, atividade_id) VALUES (1, 1);
INSERT INTO t_participantes_atividades(participante_id, atividade_id) VALUES (1, 2);
INSERT INTO t_participantes_atividades(participante_id, atividade_id) VALUES (2, 1);
INSERT INTO t_participantes_atividades(participante_id, atividade_id) VALUES (3, 1);
INSERT INTO t_participantes_atividades(participante_id, atividade_id) VALUES (3, 2);
INSERT INTO t_participantes_atividades(participante_id, atividade_id) VALUES (4, 2);