class ListasController < ApplicationController
  
  def vila_mariana
    @motoristas = Motorista.where("status = 'Vila Mariana'")
  end

  def vila_guilherme
    @motoristas = Motorista.where("status = 'Vila Guilherme'")
  end

  def licenca_medica
    @motoristas = Motorista.where("status = 'Licença Médica'")
  end

  def falta
    @motoristas = Motorista.where("status = 'Processo Administrativo de Falta'")
  end

  def recorps
    @motoristas = Motorista.where("status = 'Recorps'")
  end

  def outras_areas
    @motoristas = Motorista.where("status = 'Outras Áreas'")
  end

  def readaptados
    @motoristas = Motorista.where("status = 'Readaptado'")
  end

  def aposentados
    @motoristas = Motorista.where("status = 'Aposentado'")
  end
  
  def geral
    @motoristas = Motorista.all
  end
end
