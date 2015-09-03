class Motorista < ActiveRecord::Base
 has_many :atestados, dependent: :destroy
 has_many :multas, dependent: :destroy
  
 validates :nome, presence: true
 validates :rf, presence: true
 # mount_uploader :atestado, PictureUploader
 # mount_uploader :multa, PictureUploader
 # validate  :atestado_size
 # validate  :multa_size
 
 # def atestado_size
 #  if atestado.size > 1.megabytes
 #   errors.add(:atestado, "tamanho do arquivo deve ser no máximo 1MB")
 #  end
 # end 
 
 # def multa_size
 #  if multa.size > 1.megabytes
 #   errors.add(:multa, "tamanho do arquivo deve ser no máximo 1MB")
 #  end
 # end
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