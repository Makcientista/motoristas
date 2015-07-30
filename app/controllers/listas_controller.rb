class ListasController < ApplicationController
  
  def geral
    @motoristas = Motorista.all
    @vila_mariana = Motorista.where("local = 'TRAF V. MARIAN.' AND status ='Ativo'")
    @vila_guilherme = Motorista.where("local = 'TRAF V. GUILH.' AND status ='Ativo'")
    @recorps = Motorista.where("local = 'RECORPS' AND status ='Ativo'")
    @outras_areas = Motorista.where("local = 'Outras Áreas' AND status ='Ativo'")
    @readaptados = Motorista.where("local = 'Readaptado' AND status ='Ativo'")
    @aposentados = Motorista.where("status = 'Aposentado'")
    @licenca_medica = Motorista.where("status = 'Licença Médica'")
    @falta = Motorista.where("status = 'Processo Administrativo de Falta'")
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

  def readaptados
    @motoristas = Motorista.where("local = 'Readaptado' AND status ='Ativo'")
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
end
