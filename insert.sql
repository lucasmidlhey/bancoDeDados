
-- insert values in table Fornecedor

INSERT INTO `mydb`.`Fornecedor` (`nome_fornecedor`, `descricao_fornecedor`, `cnpj_fornecedor`)  
VALUES ('Empresa Tampa buraco', 'fornecer produtos e ferramentas', 12345678912343);

INSERT INTO `mydb`.`Fornecedor` (`nome_fornecedor`, `descricao_fornecedor`, `cnpj_fornecedor`)  
VALUES ('Ferramentas BR', 'especializada em fornecer ferramentas', 12345678912344);

INSERT INTO `mydb`.`Fornecedor` (`nome_fornecedor`, `descricao_fornecedor`, `cnpj_fornecedor`)  
VALUES ('empresa de cimento 001', 'especializada em fornecer cimento', 12345678912345);

-- insert values in table Departamento

INSERT INTO `mydb`.`Departamento` (`descricao_departamento`) 
VALUES ('Departamento de Obras Urbanas');

INSERT INTO `mydb`.`Departamento` (`descricao_departamento`) 
VALUES ('Departamento de Obras Rurais');

INSERT INTO `mydb`.`Departamento` (`descricao_departamento`) 
VALUES ('Departamento de Reparo Urbano');

-- insert values in table Cargo
INSERT INTO `mydb`.`Cargo` (`descricao_cargo`, `Departamento_id_departamento`) 
VALUES ('Gerente de obras', 1);

INSERT INTO `mydb`.`Cargo` (`descricao_cargo`, `Departamento_id_departamento`) 
VALUES ('Auxíliar técnico', 2);

INSERT INTO `mydb`.`Cargo` (`descricao_cargo`, `Departamento_id_departamento`) 
VALUES ('Operador de maquina', 2);

INSERT INTO `mydb`.`Cargo` (`descricao_cargo`, `Departamento_id_departamento`) 
VALUES ('Operador de equipamentos manuais', 2);

-- insert values in table EquipeReparo
INSERT INTO `mydb`.`EquipeReparo` (`numero_de_pessoas`, `custo_hora`, `Departamento_id_departamento`) 
VALUES (10, 140.00, 1);

INSERT INTO `mydb`.`EquipeReparo` (`numero_de_pessoas`, `custo_hora`, `Departamento_id_departamento`) 
VALUES (8, 140.00, 2);

INSERT INTO `mydb`.`EquipeReparo` (`numero_de_pessoas`, `custo_hora`, `Departamento_id_departamento`) 
VALUES (15, 140.00, 2);


-- insert values in table TipoEquipamento
INSERT INTO `mydb`.`TipoEquipamento` (`descricao_tipo_equipamento` ) 
VALUES ('Equipamento Manual');

INSERT INTO `mydb`.`TipoEquipamento` (`descricao_tipo_equipamento`) 
VALUES ('Equipamento Automático');

INSERT INTO `mydb`.`TipoEquipamento` (`descricao_tipo_equipamento`) 
VALUES ('Maquina operacional');

-- insert values in table Equipamento
INSERT INTO `mydb`.`Equipamento` (`nome_equipamento`, `preco_equipamento`, `TipoEquipamento_id_tipo_equipamento`,`EquipeReparo_id_equipe_reparo`) 
VALUES ('Pá Concha', 60.50, 1, 2);

INSERT INTO `mydb`.`Equipamento` (`nome_equipamento`, `preco_equipamento`, `TipoEquipamento_id_tipo_equipamento`,`EquipeReparo_id_equipe_reparo`) 
VALUES ('Betoneira', 300.00, 3, 1);

INSERT INTO `mydb`.`Equipamento` (`nome_equipamento`, `preco_equipamento`, `TipoEquipamento_id_tipo_equipamento`,`EquipeReparo_id_equipe_reparo`) 
VALUES ('Enxada', 30.70, 1, 2);

-- insert values in table Equipamento_has_Fornecedor
INSERT INTO `mydb`.`Equipamento_has_Fornecedor` (`Equipamento_id_equipamento`, `Fornecedor_id_fornecedor`) 
VALUES (1, 3);

INSERT INTO `mydb`.`Equipamento_has_Fornecedor` (`Equipamento_id_equipamento`, `Fornecedor_id_fornecedor`) 
VALUES (2, 3);

INSERT INTO `mydb`.`Equipamento_has_Fornecedor` (`Equipamento_id_equipamento`, `Fornecedor_id_fornecedor`) 
VALUES (3, 2);

-- insert values in  tab TipoMaterialEnchimento

INSERT INTO `mydb`.`TipoMaterialEnchimento` (`descricao_tipo_material_enchimento`) 
VALUES ('Concreto');


INSERT INTO `mydb`.`TipoMaterialEnchimento` (`descricao_tipo_material_enchimento`) 
VALUES ('Brita');


INSERT INTO `mydb`.`TipoMaterialEnchimento` (`descricao_tipo_material_enchimento`) 
VALUES ('piche');

-- insert values in table MaterialEnchimento_has_Fornecedor
INSERT INTO `mydb`.`MaterialEnchimento_has_Fornecedor` (`MaterialEnchimento_id_material_enchimento`, Fornecedor_id_fornecedor) 
VALUES (1, 1);

INSERT INTO `mydb`.`MaterialEnchimento_has_Fornecedor` (`MaterialEnchimento_id_material_enchimento`, Fornecedor_id_fornecedor) 
VALUES (2, 3);

INSERT INTO `mydb`.`MaterialEnchimento_has_Fornecedor` (`MaterialEnchimento_id_material_enchimento`, Fornecedor_id_fornecedor) 
VALUES (3, 3);

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




