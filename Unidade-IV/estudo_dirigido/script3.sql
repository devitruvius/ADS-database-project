--TAREFA FASE 3

-- Inserir dados na tabela 'atracoes'
INSERT INTO atracoes (nome_atracao, horario_inicio, horario_termino) VALUES
('Roda Gigante', '10:00:00', '22:00:00'),
('Montanha Russa', '10:00:00', '22:00:00'),
('Carrossel', '10:00:00', '20:00:00'),
('Casa Assombrada', '18:00:00', '23:00:00'),
('Torre de Queda', '11:00:00', '21:00:00');

-- Inserir dados na tabela 'barracas'
INSERT INTO barracas (nome_barraca, tipo, localizacao) VALUES
('Barraca de Pipoca', 'Alimentação', 'Entrada'),
('Barraca de Churros', 'Alimentação', 'Praça Central'),
('Barraca de Jogos', 'Entretenimento', 'Ala Norte'),
('Barraca de Artesanato', 'Artesanato', 'Ala Leste'),
('Barraca de Bebidas', 'Alimentação', 'Ala Sul');

-- Inserir dados na tabela 'vendedores'
INSERT INTO vendedores (nome_vendedor, tipo_produto, id_barraca, telefone) VALUES
('João Silva', 'Pipoca', 1, '123456789'),
('Maria Souza', 'Churros', 2, '987654321'),
('Pedro Santos', 'Jogos', 3, '456789123'),
('Ana Costa', 'Artesanato', 4, '789123456'),
('Lucas Lima', 'Bebidas', 5, '321654987');

-- Inserir dados na tabela 'shows'
INSERT INTO shows (nome_banda_artista, horario_show, palco) VALUES
('Banda A', '20:00:00', 'Palco Principal'),
('Artista B', '21:30:00', 'Palco Secundário'),
('Banda C', '18:00:00', 'Palco Principal'),
('Artista D', '19:00:00', 'Palco Secundário'),
('Banda E', '22:00:00', 'Palco Principal');

-- Inserção na tabela 'patrocionadores'
INSERT INTO patrocinadores (nome_patrocinador, tipo_patrocinio, valor) VALUES
('Empresa X', 'Financeiro', 10000.00),
('Empresa Y', 'Material', 5000.00),
('Empresa Z', 'Financeiro', 8000.00),
('Empresa W', 'Serviços', 7000.00),
('Empresa V', 'Financeiro', 6000.00);

-- Atualizar o número de funcionários das barracas
UPDATE barracas
SET numero_funcionarios = COALESCE(numero_funcionarios, 1);

-- Deletar um vendedor específico
DELETE FROM vendedores WHERE id_vendedor = 3;