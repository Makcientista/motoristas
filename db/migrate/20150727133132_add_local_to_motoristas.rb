class AddLocalToMotoristas < ActiveRecord::Migration
  def change
    add_column :motoristas, :local, :string
  end
end
