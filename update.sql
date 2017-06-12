-- updates Fornecedor

UPDATE `mydb`.`Fornecedor`
SET nome_fornecedor = 'empresa de cimento Top', 
	descricao_fornecedor = 'especializada em fornecer cimento' , 
cnpj_fornecedor = '12345678912345' 
WHERE id_fornecedor = '2';

UPDATE`mydb`.`Fornecedor` 
SET nome_fornecedor = 'Empresa de Ferramentas Tagua', 
	descricao_fornecedor = 'especializada em fornecer Ferramentas' , 
	cnpj_fornecedor = '12345678912377' 
WHERE id_fornecedor = '3';

-- updates Departamento

UPDATE `mydb`.`Departamento` 
SET descricao_departamento = 'Departamento de Obras' 
WHERE id_departamento = '2';

UPDATE `mydb`.`Departamento` 
SET descricao_departamento = 'Departamento de Obras Top'
WHERE id_departamento = '1';

-- updates Cargo

UPDATE `mydb`.`Cargo` 
SET descricao_cargo = 'Pedreiro', 
	Departamento_id_departamento = '2'
WHERE id_cargo = '1';

UPDATE `mydb`.`Cargo` 
SET descricao_cargo = 'Eletricista', 
	Departamento_id_departamento = '1'
WHERE id_cargo = '2';

-- updates EquipeReparo

UPDATE `mydb`.`EquipeReparo` 
SET numero_de_pessoas = '6', 
	custo_hora = '270.00',
	Departamento_id_departamento = '1'
WHERE id_equipe_reparo = '1';

UPDATE `mydb`.`EquipeReparo` 
SET numero_de_pessoas = '9', 
	custo_hora = '340.00',
	Departamento_id_departamento = '1'
WHERE id_equipe_reparo = '1';

-- updates TipoEquipamento 

UPDATE `mydb`.`TipoEquipamento` 
SET descricao_tipo_equipamento = '9'
WHERE id_tipo_equipamento = '1';

UPDATE `mydb`.`TipoEquipamento` 
SET descricao_tipo_equipamento = '4'
WHERE id_tipo_equipamento = '2';


-- updates Equipamento

UPDATE `mydb`.`Equipamento` 
SET nome_equipamento = 'Furadeira', 
	preco_equipamento = '85.00',
	TipoEquipamento_id_tipo_equipamento = '1',
	EquipeReparo_id_equipe_reparo = '3'
WHERE id_equipamento = '1';

UPDATE `mydb`.`Equipamento` 
SET nome_equipamento = 'Martelo', 
	preco_equipamento = '40.00',
	TipoEquipamento_id_tipo_equipamento = '1',
	EquipeReparo_id_equipe_reparo = '3'
WHERE id_equipamento = '1';


-- updates  TipoMaterialEnchimento

UPDATE `mydb`.`TipoMaterialEnchimento` 
SET descricao_tipo_material_enchimento = 'Marmore' 
WHERE  id_tipo_material_enchimento= '1';

UPDATE `mydb`.`TipoMaterialEnchimento` 
SET descricao_tipo_material_enchimento = 'Madeira' 
WHERE  id_tipo_material_enchimento= '2';


-- updates Uf 

UPDATE `mydb`.`Uf`
SET nome_uf = 'AM' 
WHERE  id_uf = '2';


UPDATE `mydb`.`Uf` 
SET nome_uf = 'PA'
WHERE  id_uf = '1';

-- updates Cidade

UPDATE `mydb`.`Cidade`
SET nome_cidade = 'Sobradinho',
	Uf_id_uf = '1' 
WHERE  id_cidade = '2';


UPDATE `mydb`.`Cidade` 
SET nome_cidade = 'Pouso Alegre',
	uf_id_uf = '1' 
WHERE  id_cidade = '3';

-- updates Bairro
UPDATE `mydb`.`Bairro` 
SET nome_bairro = 'Cajazeiras', 
	Cidade_id_cidade = '3'
WHERE  id_bairro = '2';

UPDATE `mydb`.`Bairro` 
SET nome_bairro = 'Quadra', 
		Cidade_id_cidade = '1'
WHERE  id_bairro = '2';


-- update TipoLogradouro

UPDATE `mydb`.`TipoLogradouro`
SET descricao_tipo_logradouro = 'Praca'
WHERE  id_tipo_logradouro = '2';


UPDATE `mydb`.`TipoLogradouro` 
SET descricao_tipo_logradouro = 'Rua'
WHERE  id_tipo_logradouro = '3';

-- update Logradouro

UPDATE `mydb`.`Logradouro`
SET descricao_logradouro = 'Sobrado',
	Bairro_id_bairro = '3',
	TipoLogradouro_id_tipo_logradouro = '3'
WHERE  id_logradouro = '1';


UPDATE `mydb`.`Logradouro` 
SET descricao_logradouro = 'Casa',
	Bairro_id_bairro = '4',
	TipoLogradouro_id_tipo_logradouro = '1'
WHERE  id_logradouro = '2';

-- update Endereco

UPDATE `mydb`.`Endereco`
SET complemento = 'Esquina com MacDonalds',
	numero = '3',
	Logradouro_id_logradouro = '3'
WHERE  id_endereco = '1';


UPDATE `mydb`.`Endereco` 
SET complemento = 'Ao lado da Pão Dourado',
	numero = '4',
	Logradouro_id_logradouro = '1'
WHERE  id_endereco = '2';

-- update Buraco

UPDATE `mydb`.`Buraco`
SET tamanho_buraco = '6',
	prioridade_buraco = '3',
	Endereco_id_endereco = '3'
WHERE  id_buraco = '1';


UPDATE `mydb`.`Buraco` 
SET tamanho_buraco = '7',
	prioridade_buraco = '4',
	Endereco_id_endereco = '1'
WHERE  id_buraco = '2';


-- update Naturalidade

UPDATE `mydb`.`Naturalidade`
SET descricao_naturalidade = '6',
	Uf_id_uf = '3',
	Cidade_id_cidade = '3'
WHERE  id_naturalidade = '1';

UPDATE `mydb`.`Naturalidade` 
SET descricao_naturalidade = '7',
	Uf_id_uf = '2',
	Cidade_id_cidade = '1'
WHERE  id_naturalidade = '2';

-- update TipoDano

UPDATE `mydb`.`TipoDano`
SET descricao_tipo_dano = 'Roda'
WHERE  id_tipo_dano = '1';

UPDATE `mydb`.`TipoDano` 
SET descricao_tipo_dano = 'Suspensão'
WHERE  id_tipo_dano = '2';

-- update Dano

UPDATE `mydb`.`Dano`
SET valor_dano = '200',
	TipoDano_id_tipo_dano = '1'
WHERE  id_dano = '1';

UPDATE `mydb`.`Dano` 
SET valor_dano = '220',
	TipoDano_id_tipo_dano = '2'
WHERE  id_dano = '2';

-- update Cidadao

UPDATE `mydb`.`Cidadao`
SET nome_cidadao = 'Pedro',
	nome_pai_cidadao = 'José',
	nome_mae_cidadao = 'Flavia',
	sexo_cidadao = 'M',
	estado_civil_cidadao = 'Casado',
	email_cidadao = 'pedro@email.com',
	rg_cidadao = '3594903',
	cpf_cidadao = '04507756252',
	escolaridade_cidadao = 'Ensino Técnico Completo',
	Endereço_id_endereco = '2',
	Naturalidade_id_naturalidade = '1',
	Dano_id_dano = '1'
WHERE  id_cidadao = '1';

UPDATE `mydb`.`Cidadao` 
SET nome_cidadao = 'Gabriela',
	nome_pai_cidadao = 'Marcus',
	nome_mae_cidadao = 'Maria',
	sexo_cidadao = 'F',
	estado_civil_cidadao = 'Solteira',
	email_cidadao = 'gabriela@email.com',
	rg_cidadao = '3594902',
	cpf_cidadao = '03405556253',
	escolaridade_cidadao = 'Ensino Superior Completo',
	Endereço_id_endereco = '1',
	Naturalidade_id_naturalidade = '3',
	Dano_id_dano = '3'
WHERE  id_cidadao = '2';

-- update Departamento

UPDATE `mydb`.`Departamento`
SET descricao_departamento = 'Departamento da Nona Região'
WHERE  id_departamento = '1';

UPDATE `mydb`.`Departamento` 
SET descricao_departamento = 'Departamento do Bairro das Flores'
WHERE  id_departamento = '2';

-- update TipoTelefone

UPDATE `mydb`.`TipoTelefone`
SET descricao_tipo_fone = 'Residencial'
WHERE  id_tipo_fone = '1';

UPDATE `mydb`.`TipoTelefone` 
SET descricao_tipo_fone = 'Comercial'
WHERE  id_tipo_fone = '2';

-- update Telefone

UPDATE `mydb`.`Telefone`
SET descricao_telefone = '987654321',
	TipoTelefone_id_tipo_fone = '2'
WHERE  id_telefone = '1';

UPDATE `mydb`.`Telefone` 
SET descricao_telefone = '987654322',
	TipoTelefone_id_tipo_fone = '1'
WHERE  id_telefone = '2';

-- update EquipeReparo

UPDATE `mydb`.`EquipeReparo`
SET numero_de_pessoas = '9',
	custo_hora = '20',
	Departamento_id_departamento = '2'
WHERE  id_equipe_reparo = '1';

UPDATE `mydb`.`EquipeReparo` 
SET numero_de_pessoas = '5',
	custo_hora = '10',
	Departamento_id_departamento = '1'
WHERE  id_equipe_reparo = '2';

-- update TipoMaterialEnchimento

UPDATE `mydb`.`TipoMaterialEnchimento`
SET descricao_tipo_material_enchimento = 'Piche'
WHERE  id_tipo_material_enchimento = '1';

UPDATE `mydb`.`TipoMaterialEnchimento` 
SET descricao_tipo_material_enchimento = 'Concreto'
WHERE  id_tipo_material_enchimento = '2';

-- update MaterialEnchimento

UPDATE `mydb`.`MaterialEnchimento`
SET custo_material_de_enchimento = '40',
	TipoMaterialEnchimento_id_tipo_material_enchimento = '1'
WHERE  id_material_enchimento = '1';

UPDATE `mydb`.`MaterialEnchimento` 
SET custo_material_de_enchimento = '50',
	TipoMaterialEnchimento_id_tipo_material_enchimento = '3'
WHERE  id_material_enchimento = '2';

-- update OrdemTrabalho

UPDATE `mydb`.`OrdemTrabalho`
SET status_reparo = 'Andamento',
	horas_de_trabalho = '40',
	quantidade_material_enchimento = '20',
	custo_reparo = '300',
	Buraco_id_buraco = '1',
	EquipeReparo_id_equipe_reparo = '2',
	MaterialEnchimento_id_material_enchimento = '2'
WHERE  id_ordem_trabalho = '1';

UPDATE `mydb`.`OrdemTrabalho` 
SET status_reparo = 'Realizado',
	horas_de_trabalho = '300',
	quantidade_material_enchimento = '30',
	custo_reparo = '500',
	Buraco_id_buraco = '2',
	EquipeReparo_id_equipe_reparo = '3',
	MaterialEnchimento_id_material_enchimento = '1'
WHERE  id_ordem_trabalho = '2';

-- update Funcionario

UPDATE `mydb`.`Funcionario`
SET nome_funcionario = 'Pedro',
	nome_pai_funcionario = 'Jose',
	nome_mae_funcionario = 'Maria',
	sexo_funcionario = 'M',
	email_funcionario = 'pedro@email.com',
	rg_funcionario = '3594903',
	cpf_funcionario = '04507745142',
	escolaridade_funcionario = 'Ensino Médio Completo',
	Naturalidade_id_naturalidade = '1',
	Endereco_id_endereco = '2',
	Cargo_id_cargo = '1',
	EquipeReparo_id_equipe_reparo = '2'
WHERE  id_funcionario = '1';

UPDATE `mydb`.`Funcionario` 
SET nome_funcionario = 'Maria',
	nome_pai_funcionario = 'Lucas',
	nome_mae_funcionario = 'Flavia',
	sexo_funcionario = 'F',
	email_funcionario = 'maria@email.com',
	rg_funcionario = '3594039',
	cpf_funcionario = '045072020',
	escolaridade_funcionario = 'Ensino Superior Completo',
	Naturalidade_id_naturalidade = '2',
	Endereco_id_endereco = '1',
	Cargo_id_cargo = '3',
	EquipeReparo_id_equipe_reparo = '3'
WHERE  id_funcionario = '2';

-- updates TipoIndenizacao 

UPDATE `mydb`.`TipoIndenizacao` 
SET descricao_indenizacao = 'Cheque'
WHERE id_tipo_indenizacao = '1';

UPDATE `mydb`.`TipoIndenizacao` 
SET descricao_indenizacao = 'Dinheiro'
WHERE id_tipo_indenizacao = '2';

-- updates Indenizacao 

UPDATE `mydb`.`Indenizacao` 
SET status_indenizacao = 'Indenização Paga', 
	valor_indenizacao = '1500',
	TipoIndenizacao_id_tipo_indenizacao = '1',
	Dano_id_dano = '2',
	Cidadao_id_cidadao = '2'
WHERE id_indenizacao = 1;

UPDATE `mydb`.`Indenizacao` 
SET status_indenizacao = 'Indenização Atrasada',
	valor_indenizacao = '400',
	TipoIndenizacao_id_tipo_indenizacao = '2',
	Dano_id_dano = '3 ',
	Cidadao_id_cidadao = '3'
WHERE id_indenizacao = '2';


