class PagesController < ApplicationController
  before_action :logged_in_user
  add_breadcrumb "Página Inicial", :root_path
  
  def home
  end
  
  def consultar_motoristas
    add_breadcrumb "Consultar Motoristas", :consultar_motoristas_path
  end
  
  def listar_motoristas
    add_breadcrumb "Consultar Motoristas", :consultar_motoristas_path
    add_breadcrumb "Listar Motoristas", :listar_motoristas_path
  end
  
  def buscar_motoristas
    add_breadcrumb "Consultar Motoristas", :consultar_motoristas_path
    add_breadcrumb "Buscar Motoristas", :buscar_motoristas_path
  end
  
  def relatorio
    add_breadcrumb "Relatório", :relatorio_path
    @vila_mariana = Motorista.where("local = 'TRAF. V. MARIAN.' AND status ='Ativo'").count
    @vila_guilherme = Motorista.where("local = 'TRAF. V. GUILH.' AND status ='Ativo'").count
    @recorps = Motorista.where("local = 'RECORPS' AND status ='Ativo'").count
    @outras_areas = Motorista.where("local = 'Outras Áreas' AND status ='Ativo'").count
    @readaptados = Motorista.where("local != 'Chapeiras Diversas' AND status ='Readaptado'").count
    @aposentados = Motorista.where("status = 'Aposentado'").count
    @licenca_medica = Motorista.where("local != 'Chapeiras Diversas' AND status = 'Licença Médica'").count
    @falta = Motorista.where("status = 'Processo Administrativo de Falta'").count
    @chapeiras_diversas = Motorista.where("local = 'Chapeiras Diversas'").count
    @motoristas = Motorista.all.count - @chapeiras_diversas - @aposentados
    @total = @motoristas - @falta - @outras_areas - @readaptados - @recorps - @licenca_medica
  end
  
  private
  
    def logged_in_user
      unless logged_in?
        redirect_to login_path
      end
    end
end
