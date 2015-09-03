class RemoveAtestadoAndMultaFromMotoristas < ActiveRecord::Migration
  def change
    remove_column :motoristas, :multa, :string
    remove_column :motoristas, :atestado, :string
  end
end
