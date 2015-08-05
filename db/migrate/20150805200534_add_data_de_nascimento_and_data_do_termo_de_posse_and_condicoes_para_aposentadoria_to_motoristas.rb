class AddDataDeNascimentoAndDataDoTermoDePosseAndCondicoesParaAposentadoriaToMotoristas < ActiveRecord::Migration
  def change
    add_column :motoristas, :data_de_nasc, :date
    add_column :motoristas, :data_posse, :date
    add_column :motoristas, :cond_aposentadoria, :boolean
  end
end
