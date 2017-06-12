--  deletes a row from Fornecedor
DELETE FROM `mydb`.`Fornecedor` WHERE `id_fornecedor`='2';
DELETE FROM `mydb`.`Fornecedor` WHERE `id_fornecedor`='1';

-- deletes a row from Departamento
DELETE FROM `mydb`.`Departamento` WHERE `id_departamento`='1';
DELETE FROM `mydb`.`Departamento` WHERE `id_departamento`='2';

-- delete a row from Cargo
DELETE FROM `mydb`.`Cargo` WHERE `id_cargo`='1';
DELETE FROM `mydb`.`Cargo` WHERE `id_cargo`='2';

-- delete a row from Uf
DELETE FROM `mydb`.`Uf` WHERE `id_uf`='2';
DELETE FROM `mydb`.`Uf` WHERE `id_uf`='3';

-- delete a row from Cidade
DELETE FROM `mydb`.`Cidade` WHERE `id_cidade`='1';
DELETE FROM `mydb`.`Cidade` WHERE `id_cidade`='3';

-- delete a row from Bairro
DELETE FROM `mydb`.`Bairro` WHERE `id_bairro`='2';
DELETE FROM `mydb`.`Bairro` WHERE `id_bairro`='2';

-- delete a row from TipoLogradouro
DELETE FROM `mydb`.`TipoLogradouro` WHERE `id_tipo_logradouro`='1';
DELETE FROM `mydb`.`TipoLogradouro` WHERE `id_tipo_logradouro`='2';

-- delete a row from Logradouro
DELETE FROM `mydb`.`Logradouro` WHERE `id_logradouro`='1';
DELETE FROM `mydb`.`Logradouro` WHERE `id_logradouro`='2';

-- delete a row from Endereco
DELETE FROM `mydb`.`Endereco` WHERE `id_endereco`='2';
DELETE FROM `mydb`.`Endereco` WHERE `id_endereco`='3';

-- delete a row from Buraco
DELETE FROM `mydb`.`Buraco` WHERE `id_buraco`='2';
DELETE FROM `mydb`.`Buraco` WHERE `id_buraco`='3';

-- delete a row from Naturalidade
DELETE FROM `mydb`.`Naturalidade` WHERE `id_naturalidade`='1';
DELETE FROM `mydb`.`Naturalidade` WHERE `id_naturalidade`='2';

-- delete a row from TipoDano
DELETE FROM `mydb`.`TipoDano` WHERE `id_tipo_dano`='2';
DELETE FROM `mydb`.`TipoDano` WHERE `id_tipo_dano`='3';

-- delete a row from Dano
DELETE FROM `mydb`.`Dano` WHERE `id_dano` = '1';
DELETE FROM `mydb`.`Dano` WHERE `id_dano` = '2';

-- delete a row from Cidadao
DELETE FROM `mydb`.`Cidadao` WHERE `id_cidadao` = '2' ;
DELETE FROM `mydb`.`Cidadao` WHERE `id_cidadao`='3';

-- delete a row from TipoTelefone
DELETE FROM `mydb`.`TipoTelefone` WHERE `id_tipo_fone`='1';
DELETE FROM `mydb`.`TipoTelefone` WHERE `id_tipo_fone`='2';

-- delete a row from Telefone
DELETE FROM `mydb`.`Telefone` WHERE `id_telefone` = '2';
DELETE FROM `mydb`.`Telefone` WHERE `id_telefone`='1';

-- delete a row from EquipeReparo
DELETE FROM `mydb`.`EquipeReparo` WHERE `id_equipe_reparo`='2';
DELETE FROM `mydb`.`EquipeReparo` WHERE `id_equipe_reparo`='1';

-- delete a row from TipoMaterialEnchimento
DELETE FROM `mydb`.`TipoMaterialEnchimento` WHERE `id_tipo_material_enchimento` ='1';
DELETE FROM `mydb`.`TipoMaterialEnchimento` WHERE `id_tipo_material_enchimento` ='2';

-- delete a row from MaterialEnchimento
DELETE FROM `mydb`.`MaterialEnchimento` WHERE `id_material_enchimento`='1';
DELETE FROM `mydb`.`MaterialEnchimento` WHERE `id_material_enchimento`='1';

-- delete a row from OrdemTrabalho
DELETE FROM `mydb`.`OrdemTrabalho` WHERE `id_ordem_trabalho`='2';
DELETE FROM `mydb`.`OrdemTrabalho` WHERE `id_ordem_trabalho`='2';

-- delete a row from Funcionario
DELETE FROM `mydb`.`Funcionario` WHERE `id_funcionario`='2';
DELETE FROM `mydb`.`Funcionario` WHERE `id_funcionario`='3';

-- delete a row from TipoEquipamento
DELETE FROM `mydb`.`TipoEquipamento` WHERE `id_tipo_equipamento`='2';
DELETE FROM `mydb`.`TipoEquipamento` WHERE `id_tipo_equipamento`='1';

-- delete a row from Equipamento
DELETE FROM `mydb`.`Equipamento` WHERE `id_equipamento`='2';
DELETE FROM `mydb`.`Equipamento` WHERE `id_equipamento`='1';

-- delete a row from TipoIndenizacao
DELETE FROM `mydb`.`TipoIndenizacao` WHERE `id_tipo_indenizacao`='1';
DELETE FROM `mydb`.`TipoIndenizacao` WHERE `id_tipo_indenizacao`='3';

-- delete a row from Indenizacao
DELETE FROM `mydb`.`Indenizacao` WHERE `id_indenizacao`='3';
DELETE FROM `mydb`.`Indenizacao` WHERE `id_indenizacao`='1';

-- delete a row from Cidadao_has_Telefone
DELETE FROM `mydb`.`Cidadao_has_Telefone` WHERE `Cidadao_id_cidadao`='2';
DELETE FROM `mydb`.`Cidadao_has_Telefone` WHERE `Cidadao_id_cidadao`='1';

-- delete a row from MaterialEnchimento_has_Fornecedor
DELETE FROM `mydb`.`MaterialEnchimento_has_Fornecedor` WHERE `MaterialEnchimento_id_material_enchimento`='1';
DELETE FROM `mydb`.`MaterialEnchimento_has_Fornecedor` WHERE `MaterialEnchimento_id_material_enchimento`='3';

-- delete a row from Equipamento_has_Fornecedor
DELETE FROM `mydb`.`Equipamento_has_Fornecedor` WHERE `Equipamento_id_equipamento`='3';
DELETE FROM `mydb`.`Equipamento_has_Fornecedor` WHERE `Equipamento_id_equipamento`='2';

