class AddUserToMultas < ActiveRecord::Migration
  def change
    add_column :multas, :user, :string
  end
end
