--TAREFA FASE 2

ALTER TABLE barracas
ADD COLUMN numero_funcionarios INT NOT NULL;

ALTER TABLE vendedores
ADD COLUMN telefone VARCHAR(15);

CREATE TABLE patrocinadores (
id_patrocinador INTEGER PRIMARY KEY AUTO_INCREMENT,
nome_patrocinador VARCHAR(255) NOT NULL,
tipo_patrocinio VARCHAR(255) NOT NULL,
valor DECIMAL(10, 2)
);