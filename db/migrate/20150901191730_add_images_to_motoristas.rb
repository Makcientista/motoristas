class AddImagesToMotoristas < ActiveRecord::Migration
  def change
    add_column :motoristas, :atestado, :string
    add_column :motoristas, :multa, :string
  end
end
