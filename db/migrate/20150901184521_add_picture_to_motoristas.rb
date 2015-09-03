class AddPictureToMotoristas < ActiveRecord::Migration
  def change
    add_column :motoristas, :picture, :string
  end
end
