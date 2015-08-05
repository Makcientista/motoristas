class ListasController < ApplicationController
  before_action :logged_in_user
  
  def geral
    @motoristas = Motorista.all
    @vila_mariana = Motorista.where("local = 'TRAF V. MARIAN.' AND status ='Ativo'")
    @vila_guilherme = Motorista.where("local = 'TRAF V. GUILH.' AND status ='Ativo'")
    @recorps = Motorista.where("local = 'RECORPS' AND status ='Ativo'")
    @outras_areas = Motorista.where("local = 'Outras Áreas' AND status ='Ativo'")
    @readaptados = Motorista.where("status ='Readaptado'")
    @aposentados = Motorista.where("status = 'Aposentado'")
    @licenca_medica = Motorista.where("status = 'Licença Médica'")
    @falta = Motorista.where("status = 'Processo Administrativo de Falta'")
    @nao_localizados = Motorista.where("local = 'Não Localizado'")
  end
  
  def vila_mariana
    @motoristas = Motorista.where("local = 'TRAF V. MARIAN.' AND status ='Ativo'")
  end
  
  def vila_guilherme
    @motoristas = Motorista.where("local = 'TRAF V. GUILH.' AND status ='Ativo'")
  end

  def recorps
    @motoristas = Motorista.where("local = 'RECORPS' AND status ='Ativo'")
  end

  def outras_areas
    @motoristas = Motorista.where("local = 'Outras Áreas' AND status ='Ativo'")
  end
  
  def nao_localizados
    @motoristas = Motorista.where("local = 'Não Localizado'")
  end

  def readaptados
    @readaptados = Motorista.where("status ='Readaptado'")
  end

  def aposentados
    @motoristas = Motorista.where("status = 'Aposentado'")
  end

  def licenca_medica
    @motoristas = Motorista.where("status = 'Licença Médica'")
  end

  def falta
    @motoristas = Motorista.where("status = 'Processo Administrativo de Falta'")
  end
  
  def outras_areas_filtrado
    @motoristas = Motorista.where("local = 'Outras Áreas' AND status ='Ativo'").order(:secao_atual)
    @x = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = ''")
  end
  
  private
  
    def logged_in_user
      unless logged_in?
        redirect_to login_path
      end
    end
end
