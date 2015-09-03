class CreateMultas < ActiveRecord::Migration
  def change
    create_table :multas do |t|
      t.references :motorista, index: true
      t.string :picture

      t.timestamps null: false
    end
    add_foreign_key :multas, :motoristas
  end
end
