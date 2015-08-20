class Motorista < ActiveRecord::Base
  
 validates :nome, presence: true
 validates :rf, presence: true
 # # validates :data_de_nasc, presence: true
 # validates :cargo, presence: true
 # # validates :data_posse
 # ##validates :secao_original, presence: true DEPOIS VOLTAR ISSO
 # validates :secao_atual, presence: true
 # # validates :pontuacao, presence: true
 # ##validates :local, presence: true DEPOIS VOLTAR ISSO
 # validates :status, presence: true
 
  # locais possiveis: 
  #    'TRAF. V. MARIAN.'
  #    'TRAF. V. GUILH.'
  #    'Outras Áreas'
  #    'RECORPS'
  #    'Chapeiras Diversas'
  
  # status possiveis:
  #    'Ativo'
  #    'Licença Médica'
  #    'Processo Administrativo de Falta'
  #    'Aposentado'
  #    'Readaptado'
     
 
end