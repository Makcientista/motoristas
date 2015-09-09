class AddUserToAtestados < ActiveRecord::Migration
  def change
    add_column :atestados, :user, :string
  end
end
