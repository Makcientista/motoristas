class CreateAtestados < ActiveRecord::Migration
  def change
    create_table :atestados do |t|
      t.references :motorista, index: true
      t.string :picture

      t.timestamps null: false
    end
    add_foreign_key :atestados, :motoristas
  end
end
