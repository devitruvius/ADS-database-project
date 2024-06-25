--TAREFA FASE 1

CREATE TABLE IF NOT EXISTS atracoes (
id_atracao INTEGER PRIMARY KEY AUTOINCREMENT,
nome_atracao VARCHAR(255) NOT NULL,
horario_inicio TIME NOT NULL,
horario_termino TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS barracas (
id_barraca INTEGER PRIMARY KEY AUTOINCREMENT,
nome_barraca VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
localizacao VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS vendedores (
id_vendedor INTEGER PRIMARY KEY AUTOINCREMENT,
nome_vendedor VARCHAR(255) NOT NULL,
tipo_produto VARCHAR(255) NOT NULL,
id_barraca INT,
FOREIGN KEY (id_barraca) REFERENCES barracas(id_barraca)
);

CREATE TABLE IF NOT EXISTS shows (
id_show INTEGER PRIMARY KEY AUTOINCREMENT,
nome_banda_artista VARCHAR(255) NOT NULL,
horario_show TIME NOT NULL,
palco VARCHAR(255) NOT NULL
);