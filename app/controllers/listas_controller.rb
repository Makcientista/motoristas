class ListasController < ApplicationController
  before_action :logged_in_user
  add_breadcrumb "Página Inicial", :root_path
  add_breadcrumb "Consultar Motoristas", :consultar_motoristas_path
  add_breadcrumb "Listar Motoristas", :listar_motoristas_path
  
  def geral
    add_breadcrumb "Geral", :geral_path
    @motoristas = Motorista.all
    @vila_mariana = Motorista.where("local = 'TRAF. V. MARIAN.' AND status ='Ativo'")
    @vila_guilherme = Motorista.where("local = 'TRAF. V. GUILH.' AND status ='Ativo'")
    @recorps = Motorista.where("local = 'RECORPS' AND status ='Ativo'")
    @outras_areas = Motorista.where("local = 'Outras Áreas' AND status ='Ativo'")
    @readaptados = Motorista.where("local != 'Chapeiras Diversas' AND status ='Readaptado'")
    @aposentados = Motorista.where("status = 'Aposentado'")
    @licenca_medica = Motorista.where("local != 'Chapeiras Diversas' AND status = 'Licença Médica'")
    @falta = Motorista.where("status = 'Processo Administrativo de Falta'")
    @chapeiras_diversas = Motorista.where("local = 'Chapeiras Diversas'")
  end
  
  def geral_idade
    add_breadcrumb "Geral Ordenado por Idade", :geral_idade_path
    @motoristas = Motorista.all.order(:data_de_nasc)
    @vila_mariana = Motorista.where("local = 'TRAF. V. MARIAN.' AND status ='Ativo'").order(:data_de_nasc)
    @vila_guilherme = Motorista.where("local = 'TRAF. V. GUILH.' AND status ='Ativo'").order(:data_de_nasc)
    @recorps = Motorista.where("local = 'RECORPS' AND status ='Ativo'").order(:data_de_nasc)
    @outras_areas = Motorista.where("local = 'Outras Áreas' AND status ='Ativo'").order(:data_de_nasc)
    @readaptados = Motorista.where("local != 'Chapeiras Diversas' AND status ='Readaptado'").order(:data_de_nasc)
    @aposentados = Motorista.where("status = 'Aposentado'").order(:data_de_nasc)
    @licenca_medica = Motorista.where("local != 'Chapeiras Diversas' AND status = 'Licença Médica'").order(:data_de_nasc)
    @falta = Motorista.where("status = 'Processo Administrativo de Falta'").order(:data_de_nasc)
    @chapeiras_diversas = Motorista.where("local = 'Chapeiras Diversas'").order(:data_de_nasc)
  end
  
  def geral_contribuicao
    add_breadcrumb "Geral Ordenado por Tempo de Contribuição", :geral_contribuicao_path
    @motoristas = Motorista.all.order(:data_posse)
    @vila_mariana = Motorista.where("local = 'TRAF. V. MARIAN.' AND status ='Ativo'").order(:data_posse)
    @vila_guilherme = Motorista.where("local = 'TRAF. V. GUILH.' AND status ='Ativo'").order(:data_posse)
    @recorps = Motorista.where("local = 'RECORPS' AND status ='Ativo'").order(:data_posse)
    @outras_areas = Motorista.where("local = 'Outras Áreas' AND status ='Ativo'").order(:data_posse)
    @readaptados = Motorista.where("local != 'Chapeiras Diversas' AND status ='Readaptado'").order(:data_posse)
    @aposentados = Motorista.where("status = 'Aposentado'").order(:data_posse)
    @licenca_medica = Motorista.where("local != 'Chapeiras Diversas' AND status = 'Licença Médica'").order(:data_posse)
    @falta = Motorista.where("status = 'Processo Administrativo de Falta'").order(:data_posse)
    @chapeiras_diversas = Motorista.where("local = 'Chapeiras Diversas'").order(:data_posse)
  end
  
  def vila_mariana
    add_breadcrumb "Vila Mariana", :vila_mariana_path
    @motoristas = Motorista.where("local = 'TRAF. V. MARIAN.' AND status ='Ativo'")
  end
  
  def vila_guilherme
    add_breadcrumb "Vila Guilherme", :vila_guilherme_path
    @motoristas = Motorista.where("local = 'TRAF. V. GUILH.' AND status ='Ativo'")
  end

  def recorps
    add_breadcrumb "Recorps", :recorps_path
    @motoristas = Motorista.where("local = 'RECORPS' AND status ='Ativo'")
  end

  def outras_areas
    add_breadcrumb "Outras Áreas", :outras_areas_path
    @motoristas = Motorista.where("local = 'Outras Áreas' AND status ='Ativo'")
  end

  def readaptados
    add_breadcrumb "Readaptados", :readaptados_path
    @motoristas = Motorista.where("local != 'Chapeiras Diversas' AND status ='Readaptado'")
  end

  def aposentados
    add_breadcrumb "Aposentados", :aposentados_path
    @motoristas = Motorista.where("status = 'Aposentado'")
  end

  def licenca_medica
    add_breadcrumb "Licença Médica", :licenca_medica_path
    @motoristas = Motorista.where("local != 'Chapeiras Diversas' AND status = 'Licença Médica'")
  end

  def falta
    add_breadcrumb "Processo Administrativo de Falta", :falta_path
    @motoristas = Motorista.where("status = 'Processo Administrativo de Falta'")
  end
  
  def chapeiras_diversas
    add_breadcrumb "Chapeiras Diversas", :chapeiras_diversas_path
    @motoristas = Motorista.where("local = 'Chapeiras Diversas'")
  end
  
  def outras_areas_filtrado
    add_breadcrumb "Outras Áreas Filtrado", :outras_areas_filtrado_path
    @secoes = [
      @a1  = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'TRAF. V. GUILH.'"),
      @a2  = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'TRAF. V. MARIAN.'"),
      @a3  = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'RECORPS'"),
      @a4  = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'ADM.CEMIT.'"),
      @a5  = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'AG. FORMOSA'"),
      @a6  = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'AG. H.S.P.M.'"),
      @a7  = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'AG.ARACA'"),
      @a8  = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'AG.CENTRAL'"),
      @a9  = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'AG.Q. PARADA'"),
      @a10 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'ALMOX.'"),
      @a11 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'C.N.CACHOE.'"),
      @a12 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'C.SANTANA'"),
      @a13 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'Ch. DIV.DE TRANS.'"),
      @a14 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'Crematório'"),
      @a15 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'D. PRODUCAO'"),
      @a16 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'EST. URNAS CAIX'"),
      @a17 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'ETQ URNAS CAIX'"),
      @a18 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'EXP. TRAF'"),
      @a19 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'FISCALIZ.'"),
      @a20 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'FM 21'"),
      @a21 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'MAN. DA SEDE'"),
      @a22 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'MAN.A.VERDES'"),
      @a23 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'MANUT. DA SEDE'"),
      @a24 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'S. PEDRO'"),
      @a25 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'S. PESSOAL'"),
      @a26 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'S. SOC./ FM.21'"),
      @a27 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'VEL. S. PAULO'"),
      @a28 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'VELORIO ARACA'"),
      @a29 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'VISTORIA'"),
      @a30 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'Velório Santana'"),
      @a31 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'PROTOCOLO'"),
      @a32 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'CEMIT.PARELHEIROS'"),
      @a33 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'CEMIT.QUARTA PARADA'"),
      @a34 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'VELORIO ITAQUERA'"),
      @a35 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'Tráfego/Fax'"),
      @a36 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'Mot. Almox.'"),
      @a37 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'CONTABILIDADE'")
    ]
  end
end
