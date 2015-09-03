class RemovePictureFromMotoristas < ActiveRecord::Migration
  def change
    remove_column :motoristas, :picture, :string
  end
end
