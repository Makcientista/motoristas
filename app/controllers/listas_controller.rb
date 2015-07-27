class ListasController < ApplicationController
  
  def geral
    @motoristas = Motorista.all
  end
  
  def vila_mariana
    @motoristas = Motorista.where("local = 'Vila Mariana'")
  end

  def vila_guilherme
    @motoristas = Motorista.where("local = 'Vila Guilherme'")
  end

  def recorps
    @motoristas = Motorista.where("local = 'Recorps'")
  end

  def outras_areas
    @motoristas = Motorista.where("local = 'Outras Áreas'")
  end

  def readaptados
    @motoristas = Motorista.where("local = 'Readaptado'")
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
