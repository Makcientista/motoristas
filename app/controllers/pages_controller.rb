class PagesController < ApplicationController
  before_action :logged_in_user
  
  def home
  end
  
  def relatorio
    @motoristas = Motorista.all.count
    @vila_mariana = Motorista.where("local = 'TRAF V. MARIAN.' AND status ='Ativo'").count
    @vila_guilherme = Motorista.where("local = 'TRAF V. GUILH.' AND status ='Ativo'").count
    @recorps = Motorista.where("local = 'RECORPS' AND status ='Ativo'").count
    @outras_areas = Motorista.where("local = 'Outras Áreas' AND status ='Ativo'").count
    @nao_localizados = Motorista.where("local = 'Não Localizado'").count
    @readaptados = Motorista.where("status ='Readaptado'").count
    @aposentados = Motorista.where("status = 'Aposentado'").count
    @licenca_medica = Motorista.where("status = 'Licença Médica'").count
    @falta = Motorista.where("status = 'Processo Administrativo de Falta'").count
    @total = @motoristas - @falta - @outras_areas - @readaptados - @recorps
  end
  
  private
  
    def logged_in_user
      unless logged_in?
        redirect_to login_path
      end
    end
end
