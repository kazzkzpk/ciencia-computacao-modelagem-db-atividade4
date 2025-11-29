-- Inserindo Especialidades
INSERT INTO especialidade (Nome) VALUES
    ('Cardiologia'),
    ('Pediatria'),
    ('Dermatologia'),
    ('Ortopedia'),
    ('Clínica Geral');

-- Inserindo Convênios
INSERT INTO convenio (Nome, Plano) VALUES
    ('Unimed', 'Enfermaria'),
    ('Bradesco Saúde', 'Apartamento'),
    ('Amil', 'Básico'),
    ('Allianz', 'Básico'),
    ('Particular', 'N/A');

-- Inserindo Médicos
INSERT INTO medico (Nome, CRM, ID_Especialidade) VALUES
    ('Dr. Roberto Carlos', 'CRM-SP 12345', 1),
    ('Dra. Ana Maria', 'CRM-SP 67890', 2),
    ('Dr. Drauzio', 'CRM-SP 11122', 5);

-- Inserindo Pacientes
INSERT INTO paciente (Nome, CPF, ID_Convenio) VALUES
    ('João da Silva', '123.456.789-00', 1),
    ('Maria Oliveira', '987.654.321-11', 2),
    ('Pedro Santos', '111.222.333-44', 3),
    ('Lucia Ferreira', '555.666.777-88', 4);

-- Inserindo Consultas
INSERT INTO consulta (Data_Hora, Valor, ID_Medico, ID_Paciente) VALUES
    ('2023-10-25 10:00:00', 300.00, 1, 1),
    ('2023-10-26 14:30:00', 250.00, 2, 3),
    ('2023-10-27 09:00:00', 150.00, 3, 2),
    ('2023-10-28 16:00:00', 300.00, 1, 4);

-- Inserindo Prontuários
INSERT INTO prontuario (Diagnostico, Prescricao, ID_Consulta) VALUES
    ('Hipertensão leve.', 'Losartana 50mg.', 1),
    ('Amigdalite.', 'Amoxicilina + Dipirona.', 2);

-- Inserindo Exames
INSERT INTO exame (Tipo, Link_Arquivo, ID_Paciente, ID_Medico) VALUES
    ('Eletrocardiograma', 'arquivos/eletro_joao.pdf', 1, 1),
    ('Hemograma Completo', 'arquivos/hemo_pedro.pdf', 3, 2);