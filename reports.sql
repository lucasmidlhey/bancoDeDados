-- quantidade ordem serviço atendida
select count(*) as OrdensAtentidas from OrdemTrabalho where status_reparo = 'Concluída';

-- valor pago total indenizacao
select sum(valor_indenizacao) from Indenizacao where status_indenizacao = 'Pago';

-- quantidade equipe reparo
select count(*) from EquipeReparo;
 
select * from MaterialEnchimento;
select sum(quantidade_material_enchimento) from OrdemTrabalho where MaterialEnchimento = '';
