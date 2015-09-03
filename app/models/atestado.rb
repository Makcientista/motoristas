class Atestado < ActiveRecord::Base
  belongs_to :motorista
  default_scope -> { order(created_at: :desc) }
  
  validates :motorista_id, presence: true
  mount_uploader :picture, PictureUploader
  validates :picture, presence: {message: "Por favor escolha um arquivo com tamanho máximo de 1MB" }
  validate  :picture_size
  
  private

    def picture_size
      if picture.size > 1.megabytes
        errors.add(:picture, "Por favor escolha um arquivo com tamanho máximo de 1MB")
      end
    end
end
