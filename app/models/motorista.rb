class Motorista < ActiveRecord::Base
  
 validates :nome, presence: true
 validates :rf, presence: true
 validates :cargo, presence: true
 validates :secao_original, presence: true
 validates :secao_atual, presence: true
 validates :pontuacao, presence: true
 validates :local, presence: true
 validates :status, presence: true
 
  # locais possiveis: 
  #    'Vila Mariana'
  #    'Vila Guilherme'
  #    'Outras Áreas'
  #    'Readaptado'
  #    'Recorps'
  
  # status possiveis:
  #    'Ativo'
  #    'Licença Médica'
  #    'Processo Administrativo de Falta'
  #    'Aposentado'
     
 
end