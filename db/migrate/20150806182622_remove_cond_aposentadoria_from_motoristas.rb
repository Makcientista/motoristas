class RemoveCondAposentadoriaFromMotoristas < ActiveRecord::Migration
  def change
    remove_column :motoristas, :cond_aposentadoria, :boolean
  end
end
