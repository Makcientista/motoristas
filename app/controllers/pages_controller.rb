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
    @licenca_medica_previa = Motorista.where("status = 'Licença Médica - Prévia'").count
    @motoristas = Motorista.all.count - @chapeiras_diversas - @aposentados
    @total = @motoristas - @falta - @outras_areas - @readaptados - @recorps - @licenca_medica - @licenca_medica_previa
  end
  
  def registro
    add_breadcrumb "Registro", :registro_path
    @registros = Registro.all
  end
  
  def relatorio_log
    add_breadcrumb "Relatórios / Log", :relatorio_log_path
  end
  
  def licenca_medica_indice
    add_breadcrumb "Consultar Motoristas", :consultar_motoristas_path
    add_breadcrumb "Listar Motoristas", :listar_motoristas_path
    add_breadcrumb "Licença Médica - Índice", :licenca_medica_indice_path
  end
end
