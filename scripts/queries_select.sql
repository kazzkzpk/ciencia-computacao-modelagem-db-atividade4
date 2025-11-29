-- Listar médicos e suas especialidades
SELECT m.Nome AS Medico, m.CRM, e.Nome AS Especialidade
FROM medico m
         JOIN especialidade e ON m.ID_Especialidade = e.ID_Especialidade
ORDER BY m.Nome;

-- Listar histórico de consultas de um paciente
SELECT c.Data_Hora, m.Nome AS Medico, c.Valor
FROM consulta c
         JOIN paciente p ON c.ID_Paciente = p.ID_Paciente
         JOIN medico m ON c.ID_Medico = m.ID_Medico
WHERE p.Nome LIKE 'João%'
ORDER BY c.Data_Hora DESC;

-- Contagem de consultas por médico
SELECT m.Nome AS Medico, COUNT(c.ID_Consulta) AS Total_Consultas
FROM consulta c
         JOIN medico m ON c.ID_Medico = m.ID_Medico
GROUP BY m.Nome;

-- Relatório de pacientes e seus convênios
SELECT p.Nome AS Paciente, c.Nome AS Convenio, c.Plano
FROM paciente p
         LEFT JOIN convenio c ON p.ID_Convenio = c.ID_Convenio;

-- Receita total da clínica
SELECT SUM(Valor) AS Receita_Total
FROM consulta;