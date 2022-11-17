-- Banco de dados clinica
CREATE DATABASE clinica;

-- Criando uma tabela chamada medicos
CREATE TABLE medicos (
    id_medico INT PRIMARY KEY AUTO_INCREMENT,
    crm VARCHAR(10), -- Identificador único
    nome VARCHAR(100),
    endereco VARCHAR(100),
    telefone VARCHAR(12),
    especialidade VARCHAR(30)
);

-- Criando uma tabela chamada pacientes
CREATE TABLE pacientes (
    id_paciente INT PRIMARY KEY AUTO_INCREMENT,
    cpf VARCHAR(14), -- Identificador único
    nome VARCHAR(100),
    endereco VARCHAR(100),
    telefone VARCHAR(12)
);

-- Criando uma tabela chamada consultas
CREATE TABLE consultas (
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    data_da_consulta DATE,
    observacoes TEXT,

    -- Criando relacionamento com a tabela medicos
    FOREIGN KEY (fk_medico) REFERENCES medicos(id_medico),
    -- Criando relacionamento com a tabela pacientes
    FOREIGN KEY (fk_paciente) REFERENCES pacientes(id_paciente)
);

-- Criando uma tabela chamada exames
CREATE TABLE exames (
    id_exame PRIMARY KEY AUTO_INCREMENT,
    nome_exame VARCHAR(30),
    resultado TEXT,

    -- Criando relacionamento com a tabela pacientes
    FOREIGN KEY (fk_paciente) REFERENCES pacientes(id_paciente) 
);