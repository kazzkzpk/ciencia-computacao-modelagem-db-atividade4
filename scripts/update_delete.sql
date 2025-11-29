-- Corrigir nome do paciente
UPDATE paciente
SET Nome = 'João da Silva Junior'
WHERE ID_Paciente = 1;

-- Reajustar valor das consultas de um médico específico
UPDATE consulta
SET Valor = Valor * 1.10
WHERE ID_Medico = 1;

-- Atualizar diagnóstico no prontuário
UPDATE prontuario
SET Diagnostico = 'Hipertensão Controlada'
WHERE ID_Prontuario = 1;

-- Excluir uma consulta
DELETE FROM consulta
WHERE ID_Consulta = 4;

-- Excluir um exame
DELETE FROM exame
WHERE ID_Exame = 2;

-- Excluir um convênio específico
DELETE FROM convenio
WHERE Nome = 'Allianz';