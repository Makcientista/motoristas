class CreateMotoristas < ActiveRecord::Migration
  def change
    create_table :motoristas do |t|
      t.string :nome
      t.string :rf
      t.string :cargo
      t.string :secao_original
      t.string :secao_atual
      t.string :pontuacao
      t.string :status

      t.timestamps null: false
    end
  end
end
