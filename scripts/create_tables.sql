-- ESPECIALIDADE
CREATE TABLE especialidade (
    ID_Especialidade INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL
);

--  CONVENIO
CREATE TABLE convenio (
    ID_Convenio INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Plano VARCHAR(50)
);

-- MEDICO
CREATE TABLE medico (
    ID_Medico INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CRM VARCHAR(20) NOT NULL UNIQUE,
    ID_Especialidade INT,
    FOREIGN KEY (ID_Especialidade) REFERENCES especialidade(ID_Especialidade)
);

-- PACIENTE
CREATE TABLE paciente (
    ID_Paciente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) NOT NULL UNIQUE,
    ID_Convenio INT,
    FOREIGN KEY (ID_Convenio) REFERENCES convenio(ID_Convenio)
);

-- CONSULTA
CREATE TABLE consulta (
      ID_Consulta INT AUTO_INCREMENT PRIMARY KEY,
      Data_Hora DATETIME NOT NULL,
      Valor DECIMAL(10, 2),
      ID_Medico INT,
      ID_Paciente INT,
      FOREIGN KEY (ID_Medico) REFERENCES medico(ID_Medico),
      FOREIGN KEY (ID_Paciente) REFERENCES paciente(ID_Paciente)
);

-- PRONTUARIO
CREATE TABLE prontuario (
    ID_Prontuario INT AUTO_INCREMENT PRIMARY KEY,
    Diagnostico TEXT,
    Prescricao TEXT,
    ID_Consulta INT UNIQUE,
    FOREIGN KEY (ID_Consulta) REFERENCES consulta(ID_Consulta) ON DELETE CASCADE
);

-- EXAME
CREATE TABLE exame (
    ID_Exame INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(100) NOT NULL,
    Link_Arquivo VARCHAR(255),
    ID_Paciente INT,
    ID_Medico INT,
    FOREIGN KEY (ID_Paciente) REFERENCES paciente(ID_Paciente),
    FOREIGN KEY (ID_Medico) REFERENCES medico(ID_Medico)
);