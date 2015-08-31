class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.string :nome
      t.string :rf
      t.string :cargo
      t.string :secao_original
      t.string :secao_atual
      t.string :pontuacao
      t.string :status
      t.string :local
      t.string :data_de_nasc
      t.string :data_posse
      t.string :momento
      t.string :user

      t.timestamps null: false
    end
  end
end
