-- insert values in table Fornecedor

INSERT INTO `mydb`.`Fornecedor` (`nome_fornecedor`, `descricao_fornecedor`, `cnpj_fornecedor`)  
VALUES ('Empresa Tampa buraco', 'fornecer produtos e ferramentas', '12345678912343');

INSERT INTO `mydb`.`Fornecedor` (`nome_fornecedor`, `descricao_fornecedor`, `cnpj_fornecedor`) 
VALUES ('Ferramentas BR', 'especializada em fornecer ferramentas', '12345678912344');

INSERT INTO `mydb`.`Fornecedor` (`nome_fornecedor`, `descricao_fornecedor`, `cnpj_fornecedor`) 
VALUES ('empresa de cimento 001', 'especializada em fornecer cimento', '12345678912345');

-- insert values in table Departamento


INSERT INTO `mydb`.`Departamento` (`descricao_departamento`) 
VALUES ('Departamento de Obras Urbanas');

INSERT INTO `mydb`.`Departamento` (`descricao_departamento`) 
VALUES ('Departamento de Obras Rurais');

INSERT INTO `mydb`.`Departamento` (`descricao_departamento`) 
VALUES ('Departamento de Reparo Urbano');

-- insert values in table Cargo
INSERT INTO `mydb`.`Cargo` (`descricao_cargo`, `Departamento_id_departamento`) 
VALUES ('Gerente de obras', '1');

INSERT INTO `mydb`.`Cargo` (`descricao_cargo`, `Departamento_id_departamento`) 
VALUES ('Auxíliar técnico', '2');

INSERT INTO `mydb`.`Cargo` (`descricao_cargo`, `Departamento_id_departamento`) 
VALUES ('Operador de maquina', '2');

INSERT INTO `mydb`.`Cargo` (`descricao_cargo`, `Departamento_id_departamento`) 
VALUES ('Operador de equipamentos manuais', '2');

-- insert values in table EquipeReparo
INSERT INTO `mydb`.`EquipeReparo` (`numero_de_pessoas`, `custo_hora`, `Departamento_id_departamento`) 
VALUES ('10', '140.00', '1');

INSERT INTO `mydb`.`EquipeReparo` (`numero_de_pessoas`, `custo_hora`, `Departamento_id_departamento`) 
VALUES ('8', '140.00', '2');

INSERT INTO `mydb`.`EquipeReparo` (`numero_de_pessoas`, `custo_hora`, `Departamento_id_departamento`) 
VALUES ('15', '140.00', '2');

-- insert values in table TipoEquipamento
INSERT INTO `mydb`.`TipoEquipamento` (`descricao_tipo_equipamento` ) 
VALUES ('Equipamento Manual');

INSERT INTO `mydb`.`TipoEquipamento` (`descricao_tipo_equipamento`) 
VALUES ('Equipamento Automático');

INSERT INTO `mydb`.`TipoEquipamento` (`descricao_tipo_equipamento`) 
VALUES ('Maquina operacional');

-- insert values in table Equipamento
INSERT INTO `mydb`.`Equipamento` (`nome_equipamento`, `preco_equipamento`, `TipoEquipamento_id_tipo_equipamento`,`EquipeReparo_id_equipe_reparo`) 
VALUES ('Pá Concha', '60.50', '1', '2');

INSERT INTO `mydb`.`Equipamento` (`nome_equipamento`, `preco_equipamento`, `TipoEquipamento_id_tipo_equipamento`,`EquipeReparo_id_equipe_reparo`) 
VALUES ('Betoneira', '300.00', '3', '1');

INSERT INTO `mydb`.`Equipamento` (`nome_equipamento`, `preco_equipamento`, `TipoEquipamento_id_tipo_equipamento`,`EquipeReparo_id_equipe_reparo`) 
VALUES ('Enxada', '30.70', '1', '2');

-- insert values in table Equipamento_has_Fornecedor
INSERT INTO `mydb`.`Equipamento_has_Fornecedor` (`Equipamento_id_equipamento`, `Fornecedor_id_fornecedor`) 
VALUES ('1', '3');

INSERT INTO `mydb`.`Equipamento_has_Fornecedor` (`Equipamento_id_equipamento`, `Fornecedor_id_fornecedor`) 
VALUES ('2', '3');

INSERT INTO `mydb`.`Equipamento_has_Fornecedor` (`Equipamento_id_equipamento`, `Fornecedor_id_fornecedor`) 
VALUES ('3', '2');

-- insert values in  tab TipoMaterialEnchimento
INSERT INTO `mydb`.`TipoMaterialEnchimento` (`descricao_tipo_material_enchimento`) 
VALUES ('Concreto');


INSERT INTO `mydb`.`TipoMaterialEnchimento` (`descricao_tipo_material_enchimento`) 
VALUES ('Brita');


INSERT INTO `mydb`.`TipoMaterialEnchimento` (`descricao_tipo_material_enchimento`) 
VALUES ('piche');

-- insert values in table MaterialEnchimento_has_Fornecedor

INSERT INTO `mydb`.`MaterialEnchimento_has_Fornecedor` (`MaterialEnchimento_id_material_enchimento`, `Fornecedor_id_fornecedor`) 
VALUES ('1', '1');

INSERT INTO `mydb`.`MaterialEnchimento_has_Fornecedor` (`MaterialEnchimento_id_material_enchimento`, `Fornecedor_id_fornecedor`) 
VALUES ('2', '3');

INSERT INTO `mydb`.`MaterialEnchimento_has_Fornecedor` (`MaterialEnchimento_id_material_enchimento`, `Fornecedor_id_fornecedor`) 
VALUES ('3', '3');

-- insert values in Uf table
INSERT INTO`mydb`.`Uf` (`nome_uf`) 
VALUES ('DF');

INSERT INTO `mydb`.`Uf` (`nome_uf`) 
VALUES ('CE');

INSERT INTO `mydb`.`Uf` (`nome_uf`) 
VALUES ('PE');

-- insert values in Cidade table
INSERT INTO `mydb`.`Cidade` (`nome_cidade`, `Uf_id_uf`) 
VALUES ('Brasilia', '1');

INSERT INTO `mydb`.`Cidade` (`nome_cidade`, `Uf_id_uf`) 
VALUES ('Fortaleza', '2');

INSERT INTO `mydb`.`Cidade` (`nome_cidade`, `Uf_id_uf`) 
VALUES ('Recife', '3');


-- insert values in table Bairro 

INSERT INTO `mydb`.`Bairro` (`nome_bairro`, `Cidade_id_cidade`)
VALUES ('Serrinha', '2');

INSERT INTO `mydb`.`Bairro` (`nome_bairro`, `Cidade_id_cidade`)
VALUES ('Jardim Violeta', '2');

INSERT INTO `mydb`.`Bairro` (`nome_bairro`, `Cidade_id_cidade`)
VALUES ('Cajazeiras', '2');

INSERT INTO `mydb`.`Bairro` (`nome_bairro`, `Cidade_id_cidade`)
VALUES ('Paque dois irmãos', '2');

INSERT INTO `mydb`.`Bairro` (`nome_bairro`, `Cidade_id_cidade`)
VALUES ('Torre', '2');

INSERT INTO `mydb`.`Bairro` (`nome_bairro`, `Cidade_id_cidade`)
VALUES ('Afogados', '3');

INSERT INTO `mydb`.`Bairro` (`nome_bairro`, `Cidade_id_cidade`)
VALUES ('Santo Antônio', '3');

INSERT INTO `mydb`.`Bairro` (`nome_bairro`, `Cidade_id_cidade`)
VALUES ('Madalena', '3');

-- insert values in table TipoLogradouro

INSERT INTO `mydb`.`TipoLogradouro` (`descricao_tipo_logradouro`)
VALUES ('Praça');

INSERT INTO `mydb`.`TipoLogradouro` (`descricao_tipo_logradouro`)
VALUES ('Rua');

INSERT INTO `mydb`.`TipoLogradouro` (`descricao_tipo_logradouro`)
VALUES ('Avenida');

INSERT INTO `mydb`.`TipoLogradouro` (`descricao_tipo_logradouro`)
VALUES ('Quadra');

-- insert values in table Logradouro

INSERT INTO `mydb`.`Logradouro` (`descricao_logradouro`, `Bairro_id_bairro`, 
							`TipoLogradouro_id_tipo_logradouro`)
VALUES ('casa', 1, 1);

INSERT INTO `mydb`.`Logradouro` (`descricao_logradouro`, `Bairro_id_bairro`, 
							`TipoLogradouro_id_tipo_logradouro`)
VALUES ('prédio', 2, 2);

INSERT INTO `mydb`.`Logradouro` (`descricao_logradouro`, `Bairro_id_bairro`, 
							`TipoLogradouro_id_tipo_logradouro`)
VALUES ('sobrado', 5, 2);

INSERT INTO `mydb`.`Logradouro` (`descricao_logradouro`, `Bairro_id_bairro`, 
							`TipoLogradouro_id_tipo_logradouro`)
VALUES ('casa', 5, 2);

INSERT INTO `mydb`.`Logradouro` (`descricao_logradouro`, `Bairro_id_bairro`, 
							`TipoLogradouro_id_tipo_logradouro`)
VALUES ('casa', 4, 2);

INSERT INTO `mydb`.`Logradouro` (`descricao_logradouro`, `Bairro_id_bairro`, 
							`TipoLogradouro_id_tipo_logradouro`)
VALUES ('prédio', 4, 1);

-- insert values in table Endereco 

INSERT INTO `mydb`.`Endereco` (`complemento`, `numero`, `Logradouro_id_logradouro`) 
VALUES ('próximo ao mercadão', '12', '1');

INSERT INTO `mydb`.`Endereco` (`complemento`, `numero`, `Logradouro_id_logradouro`) 
VALUES ('próximo ao mercadão', '13', '2');

INSERT INTO `mydb`.`Endereco` (`complemento`, `numero`, `Logradouro_id_logradouro`) 
VALUES ('Casa de portão azul', '123', '4');

INSERT INTO `mydb`.`Endereco` (`complemento`, `numero`, `Logradouro_id_logradouro`) 
VALUES ('ao lado do colégio 12', '381', '6');

-- insert values in table Buraco

INSERT INTO `mydb`.`Buraco` (`tamanho_buraco`, `prioridade_buraco`, `Endereco_id_endereco`, `descricao_buraco`) 
VALUES (8, 1 , 1, 'buraco no meio da rua');

INSERT INTO `mydb`.`Buraco` (`tamanho_buraco`, `prioridade_buraco`, `Endereco_id_endereco`, `descricao_buraco`) 
VALUES (5, 2, 2, 'buraco na calçada');

INSERT INTO `mydb`.`Buraco` (`tamanho_buraco`, `prioridade_buraco`, `Endereco_id_endereco`, `descricao_buraco`) 
VALUES (3, 3, 3, 'buraco na calçada');

INSERT INTO `mydb`.`Buraco` (`tamanho_buraco`, `prioridade_buraco`, `Endereco_id_endereco`, `descricao_buraco`) 
VALUES (4, 10 , 3, 'buraco grande na rua');

-- inser values in table OrdemTrabalho

INSERT INTO  `mydb`.`OrdemTrabalho` (`status_reparo`, `horas_de_trabalho`, `quantidade_material_enchimento`, 
								  `custo_reparo`, `Buraco_id_buraco`, `EquipeReparo_id_equipe_reparo`, 
								  `MaterialEnchimento_id_material_enchimento`) 
VALUES ( 'Em andamento', '15', 100, 20100, 1, 1, 2);

INSERT INTO `mydb`.`OrdemTrabalho` (`status_reparo`, `horas_de_trabalho`, `quantidade_material_enchimento`, 
								  `custo_reparo`, `Buraco_id_buraco`, `EquipeReparo_id_equipe_reparo`, 
								  `MaterialEnchimento_id_material_enchimento`)
VALUES ('Concluída', '50', 200, 1400, 2, 2, 1);

INSERT INTO `mydb`.`OrdemTrabalho` (`status_reparo`, `horas_de_trabalho`, `quantidade_material_enchimento`, 
								`custo_reparo`, `Buraco_id_buraco`, `EquipeReparo_id_equipe_reparo`, `MaterialEnchimento_id_material_enchimento`)
VALUES ('Concluída', '70', 200, 2000, 3, 3, 3);

-- insert values in table Naturalidade

INSERT INTO `mydb`.`Naturalidade` (`descricao_naturalidade`, `Uf_id_uf`, `Cidade_id_cidade`)
VALUES ( 'Brasiliense', 1, 1);

INSERT INTO `mydb`.`Naturalidade` (`descricao_naturalidade`, `Uf_id_uf`, `Cidade_id_cidade`) 
VALUES ('Fortalezense', 2, 2);

INSERT INTO `mydb`.`Naturalidade` (`descricao_naturalidade`, `Uf_id_uf`, `Cidade_id_cidade`) 
VALUES ('Recifense', 3, 3);

-- insert values in table Cidadao 
INSERT INTO `mydb`.`Cidadao` (`nome_cidadao`, `nome_pai_cidadao`, `nome_mae_cidadao`, `sexo_cidadao`,
						       `estado_civil_cidadao`, `email_cidadao`, `rg_cidadao`, `cpf_cidadao`, `escolaridade_cidadao`, 
							`Endereço_id_endereco`, `Naturalidade_id_naturalidade`, `Dano_id_dano`) 
VALUES ('Jose', 'Joao', 'Maria', 'M', 'Casado', 'jose@email.com', 
		'12345600', '12345600', 'Superior', '1', '1', '1');

INSERT INTO `mydb`.`Cidadao` (`nome_cidadao`, `nome_pai_cidadao`, `nome_mae_cidadao`, `sexo_cidadao`,
						      `estado_civil_cidadao`, `email_cidadao`, `rg_cidadao`, `cpf_cidadao`, `escolaridade_cidadao`, 
						      `Endereço_id_endereco`, `Naturalidade_id_naturalidade`, `Dano_id_dano`) 
VALUES ('Joao', 'Mario', 'Lucia', 'M', 'Solteiro', 'joao@email.com', 
		'12345678', '12345612', 'Fundamental', '2', '2', '3');

INSERT INTO `mydb`.`Cidadao` (`nome_cidadao`, `nome_pai_cidadao`, `nome_mae_cidadao`,`sexo_cidadao`, 
							`estado_civil_cidadao`, `email_cidadao`, `rg_cidadao`, `cpf_cidadao`, `escolaridade_cidadao`, 
							`Endereço_id_endereco`, `Naturalidade_id_naturalidade`, `Dano_id_dano`) 
VALUES ('Maria', 'Lucio', 'Lucia', 'F', 'Viuva', 'maria@mail.com', 
		'12346777', '12357883', 'Medio', '3', '3', '2');

-- insert values in table Indenizacao
INSERT INTO `mydb`.`Indenizacao` (`status_indenizacao`, `valor_indenizacao`, `TipoIndenizacao_id_tipo_indenizacao`, 
							    `Dano_id_dano`, `Cidadao_id_cidadao`) 
VALUES ('Pago', '1300.00', '1', '1', '1');

INSERT INTO `mydb`.`Indenizacao` (`status_indenizacao`, `valor_indenizacao`, `TipoIndenizacao_id_tipo_indenizacao`, 
							    `Dano_id_dano`, `Cidadao_id_cidadao`) 
VALUES ('Negado', '0.00', '3', '2', '2');

INSERT INTO `mydb`.`Indenizacao` (`status_indenizacao`, `valor_indenizacao`, `TipoIndenizacao_id_tipo_indenizacao`, 
							     `Dano_id_dano`, `Cidadao_id_cidadao`) 
VALUES ('Encaminhado', '500.00', '2', '3', '3');


-- insert values in table Funcionario 

INSERT INTO  `mydb`.`Funcionario` (`nome_funcionario`, `nome_pai_funcionario`, `nome_mae_funcionario`, 
									`sexo_funcionario`, `estado_civil_funcionario`, `email_funcionario`, 
									`rg_funcionario`, `cpf_funcionario`, `escolaridade_funcionario`, 
									`Naturalidade_id_naturalidade`, `Endereco_id_endereco`, `Cargo_id_cargo`, 
                                    `EquipeReparo_id_equipe_reparo`)
VALUES ('João Tavares', 'Marcio Araujo', 'Cristina soares', 'Masculino', 'Solteiro', 'joao@funcionario.com', '1234567', '12345678910', '2', '1', '1', '2', '1');

INSERT INTO  `mydb`.`Funcionario` (`nome_funcionario`, `nome_pai_funcionario`, `nome_mae_funcionario`, 
									`sexo_funcionario`, `estado_civil_funcionario`, `email_funcionario`, 
									`rg_funcionario`, `cpf_funcionario`, `escolaridade_funcionario`, 
									`Naturalidade_id_naturalidade`, `Endereco_id_endereco`, `Cargo_id_cargo`, 
                                    `EquipeReparo_id_equipe_reparo`) 
VALUES ('Pedro Augusto', 'Joel Santana', 'Luiza Cristina', 'Masculino', 'casado', 'pedro@funcionario.com', '1234568', '12345678911', '1', '2', '4', '2', '1');

INSERT INTO  `mydb`.`Funcionario` (`nome_funcionario`, `nome_pai_funcionario`, `nome_mae_funcionario`, 
									`sexo_funcionario`, `estado_civil_funcionario`, `email_funcionario`, 
									`rg_funcionario`, `cpf_funcionario`, `escolaridade_funcionario`, 
									`Naturalidade_id_naturalidade`, `Endereco_id_endereco`, `Cargo_id_cargo`, 
                                    `EquipeReparo_id_equipe_reparo`)
VALUES ('Lucas Soares', 'Paulo Soares', 'Priscila Augusta', 'Masculino', 'Solteiro', 'lucas@funcionario.com', '1234561', '12345678912', '2', '3', '1', '1', '2');


-- insert values in table TipoTelefone

INSERT INTO `mydb`.`TipoTelefone` (`descricao_tipo_fone`)
VALUES ('Comercial');

INSERT INTO `mydb`.`TipoTelefone` (`descricao_tipo_fone`)
VALUES ('Residencial');

INSERT INTO `mydb`.`TipoTelefone` (`descricao_tipo_fone`)
VALUES ('Pessoal');

-- insert values in table Telefone

INSERT INTO `mydb`.`Telefone` (`descricao_telefone`, `TipoTelefone_id_tipo_fone`) 
VALUES ('(85)92323-8532', 1);

INSERT INTO `mydb`.`Telefone` (`descricao_telefone`, `TipoTelefone_id_tipo_fone`) 
VALUES ('(85)95733-6552', 2);

INSERT INTO `mydb`.`Telefone` (`descricao_telefone`, `TipoTelefone_id_tipo_fone`) 
VALUES ('(85)92723-4532', 3);

-- insert values in table Cidadao_has_Telefone
INSERT INTO `mydb`.`Cidadao_has_Telefone` (`Cidadao_id_cidadao`, `Telefone_id_telefone`)  
VALUES (1, 1);
INSERT INTO `mydb`.`Cidadao_has_Telefone` (`Cidadao_id_cidadao`, `Telefone_id_telefone`) 
VALUES (2, 2);
INSERT INTO `mydb`.`Cidadao_has_Telefone` (`Cidadao_id_cidadao`, `Telefone_id_telefone`)  
VALUES (3, 3);

-- insert values in table Dependente
INSERT INTO `mydb`.`Dependente` (`nome_dependente`, `Funcionario_id_funcionario`) 
VALUES ('Joaozinho', '1');
INSERT INTO `mydb`.`Dependente` (`nome_dependente`, `Funcionario_id_funcionario`) 
VALUES ('Mariazinha', '2');
INSERT INTO `mydb`.`Dependente` (`nome_dependente`, `Funcionario_id_funcionario`) 
VALUES ('Pedrinho', '3');

