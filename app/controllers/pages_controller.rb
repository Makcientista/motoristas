class PagesController < ApplicationController
  
  def home
  end
  
  def relatorio
    @motoristas = Motorista.all.count
    @vila_mariana = Motorista.where("local = 'TRAF V. MARIAN.' AND status ='Ativo'").count
    @vila_guilherme = Motorista.where("local = 'TRAF V. GUILH.' AND status ='Ativo'").count
    @recorps = Motorista.where("local = 'RECORPS' AND status ='Ativo'").count
    @outras_areas = Motorista.where("local = 'Outras Áreas' AND status ='Ativo'").count
    @readaptados = Motorista.where("local = 'Readaptado' AND status ='Ativo'").count
    @aposentados = Motorista.where("status = 'Aposentado'").count
    @licenca_medica = Motorista.where("status = 'Licença Médica'").count
    @falta = Motorista.where("status = 'Processo Administrativo de Falta'").count
    @total = 222 - @falta - @outras_areas - @readaptados - @recorps
    # esse numero 222 precisa ser caculado pelo programa, ele seria @vila_mariana + @vila_guilherme
  end
end
