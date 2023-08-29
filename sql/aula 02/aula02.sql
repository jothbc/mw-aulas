create table produtos(
	id int primary key AUTO_INCREMENT,
    nome varchar(50),
    preco decimal(10,2),
    estoque int,
    categoria varchar(20)
);

INSERT INTO produtos (nome, preco, estoque, categoria) VALUES
('Produto 01', 23.50, 10, 'Categoria 1'),
('Produto 02', 150.30, 5, 'Categoria 2'),
('Produto 03', 87.20, 20, 'Categoria 3'),
('Produto 04', 135.75, 25, 'Categoria 4'),
('Produto 05', 45.60, 12, 'Categoria 2'),
('Produto 06', 72.80, 28, 'Categoria 1'),
('Produto 07', 111.90, 2, 'Categoria 3'),
('Produto 08', 98.45, 8, 'Categoria 10'),
('Produto 09', 54.30, 15, 'Categoria 8'),
('Produto 10', 120.70, 0, 'Categoria 7'),
('Produto 11', 65.50, 6, 'Categoria 7'),
('Produto 12', 47.25, 22, 'Categoria 4'),
('Produto 13', 180.60, 30, 'Categoria 3'),
('Produto 14', 145.90, 17, 'Categoria 3'),
('Produto 15', 89.00, 3, 'Categoria 10'),
('Produto 16', 34.20, 27, 'Categoria 10'),
('Produto 17', 39.90, 11, 'Categoria 1'),
('Produto 18', 130.10, 7, 'Categoria 2'),
('Produto 19', 103.45, 29, 'Categoria 5'),
('Produto 20', 10.00, 23, 'Categoria 5'),
('Produto 21', 48.70, 21, 'Categoria 7'),
('Produto 22', 159.80, 4, 'Categoria 9'),
('Produto 23', 75.90, 9, 'Categoria 9'),
('Produto 24', 92.35, 16, 'Categoria 2'),
('Produto 25', 185.55, 13, 'Categoria 3'),
('Produto 26', 164.20, 19, 'Categoria 8'),
('Produto 27', 16.75, 14, 'Categoria 7'),
('Produto 28', 110.50, 18, 'Categoria 10'),
('Produto 29', 41.00, 24, 'Categoria 10'),
('Produto 30', 200.00, 10, 'Categoria 2'),
('Produto 31', 54.85, 26, 'Categoria 3'),
('Produto 32', 79.60, 1, 'Categoria 7'),
('Produto 33', 63.15, 12, 'Categoria 8'),
('Produto 34', 105.20, 5, 'Categoria 4'),
('Produto 35', 138.90, 15, 'Categoria 9'),
('Produto 36', 50.70, 28, 'Categoria 2'),
('Produto 37', 32.20, 9, 'Categoria 3'),
('Produto 38', 91.85, 2, 'Categoria 3'),
('Produto 39', 172.50, 25, 'Categoria 4'),
('Produto 40', 19.80, 20, 'Categoria 4'),
('Produto 41', 146.30, 6, 'Categoria 4'),
('Produto 42', 81.70, 17, 'Categoria 5'),
('Produto 43', 60.40, 7, 'Categoria 5'),
('Produto 44', 40.90, 3, 'Categoria 2'),
('Produto 45', 56.20, 27, 'Categoria 1'),
('Produto 46', 190.75, 11, 'Categoria 3'),
('Produto 47', 85.35, 8, 'Categoria 3'),
('Produto 48', 124.00, 22, 'Categoria 9'),
('Produto 49', 67.80, 29, 'Categoria 8'),
('Produto 50', 113.65, 23, 'Categoria 2');

-- Selecione o preço máximo dos produtos da tabela "Produtos" agrupados por categoria. ( caso precise exibir o nome também ficaria assim a consulta)
select nome, preco, categoria from produtos where preco in (select max(preco) as max_preco from produtos group by categoria);


create table alunos(
	id int primary key AUTO_INCREMENT,
    nome varchar(100),
    sobrenome varchar(100),
    idade int,
    curso_id int
);

INSERT INTO alunos (nome, sobrenome, idade, curso_id) VALUES
('Lucas','Souza', 18, 1),
('Gabriela','Oliveira', 20, 5),
('João','Silva', 15, 3),
('Maria','Fernanda', 22, 7),
('Pedro','Cardoso', 24, 2),
('Amanda','Rocha', 28, 6),
('Bruno','Martins', 21, 9),
('Larissa','Alves', 23, 10),
('Ricardo','Pereira', 17, 4),
('Fernanda','Costa', 16, 8),
('Thiago','Ribeiro', 26, 2),
('Camila','Dias', 19, 5),
('Rodrigo','Lima', 27, 1),
('Beatriz','Teixeira', 14, 6),
('Carlos','Eduardo', 29, 3),
('Júlia','Santos', 25, 7),
('Felipe','Barbosa', 20, 10),
('Isabella','Moraes', 21, 8),
('Matheus','Araújo', 18, 4),
('Mariana','Castro', 23, 9),
('Gustavo','Nogueira', 22, 2),
('Vitória','Lopes', 19, 5),
('Leonardo','Carvalho', 24, 1),
('Isabelly','Freitas', 17, 3),
('André','Gomes', 28, 6),
('Aline','Ferreira', 27, 10),
('Rafael','Pinto', 15, 8),
('Lívia','Marques', 30, 7),
('Diego','Silva', 16, 4),
('Yasmin','Correia', 26, 9),
('Guilherme','Cavalcante', 22, 2),
('Alice','Reis', 20, 1),
('Paulo','Cunha', 18, 5),
('Mirella','Franco', 29, 3),
('Eduardo','Moura', 24, 8),
('Sofia','Neves', 21, 7),
('Lucas','Gabriel', 19, 6),
('Isadora','Barros', 17, 10),
('Henrique','Duarte', 27, 9),
('Lorena','Monteiro', 25, 1),
('Rafaela','Magalhães', 23, 5),
('Danilo','Peixoto', 15, 4),
('Sarah','Vieira', 22, 3),
('Hugo','Rodrigues', 26, 2),
('Melissa','Maia', 20, 8),
('Igor','Fonseca', 28, 6),
('Bruna','Ramos', 29, 7),
('Bernardo','Guerra', 16, 10),
('Jéssica','Guedes', 18, 9);


create table cursos(
  id int primary key AUTO_INCREMENT,
  nome varchar(20)
);

INSERT INTO cursos (nome) VALUES
('Matemática'),
('Física'),
('Química'),
('Biologia'),
('História'),
('Geografia'),
('Artes'),
('Filosofia'),
('Sociologia'),
('Literatura'),
('Inglês'),
('Português'),
('Educação Física'),
('Música'),
('Psicologia'),
('Direito'),
('Engenharia Civil'),
('Medicina'),
('Arquitetura'),
('Administração');
