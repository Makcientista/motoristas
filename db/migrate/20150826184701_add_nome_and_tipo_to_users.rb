class AddNomeAndTipoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nome, :string
    add_column :users, :tipo, :string
  end
end
