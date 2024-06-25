-- Consulta 1: Listar todas as barracas e o número de vendedores em cada uma
SELECT b.nome_barraca, COUNT(v.id_vendedor) AS numero_vendedores
FROM barracas b
LEFT JOIN vendedores v ON b.id_barraca = v.id_barraca
GROUP BY b.nome_barraca;

-- Consulta 2: Encontrar o total de shows por palco
SELECT palco, COUNT(*) AS total_de_shows
FROM shows
GROUP BY palco;

-- Consulta 3: Exibir os patrocinadores que contribuíram com valores acima de um certo valor
SELECT nome_patrocinador, valor
FROM patrocinadores
WHERE valor > 7000;
Paulo Gonçalo Farias Gonçalves
21:13

-- Consulta 4: Listar todas as atrações que ocorrem após um certo horário
SELECT *
FROM atracoes
WHERE horario_inicio > '19:00:00';

-- Consulta 5: Agrupar barracas por tipo e filtrar aquelas que têm mais de 3 vendedores
SELECT b.tipo, COUNT(v.id_vendedor) AS total_vendedores
FROM barracas b
LEFT JOIN vendedores v ON b.id_barraca = v.id_barraca
GROUP BY b.tipo
HAVING total_vendedores > 3;

-- Consulta 6: Combinar dados de barracas e vendedores para listar vendedores por tipo de produto
SELECT b.nome_barraca, v.nome_vendedor, v.tipo_produto
FROM barracas b
JOIN vendedores v ON b.id_barraca = v.id_barraca
ORDER BY v.tipo_produto;