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
  
  def geral_idade
    @motoristas = Motorista.all.order(:data_de_nasc)
    @vila_mariana = Motorista.where("local = 'TRAF V. MARIAN.' AND status ='Ativo'").order(:data_de_nasc)
    @vila_guilherme = Motorista.where("local = 'TRAF V. GUILH.' AND status ='Ativo'").order(:data_de_nasc)
    @recorps = Motorista.where("local = 'RECORPS' AND status ='Ativo'").order(:data_de_nasc)
    @outras_areas = Motorista.where("local = 'Outras Áreas' AND status ='Ativo'").order(:data_de_nasc)
    @readaptados = Motorista.where("status ='Readaptado'").order(:data_de_nasc)
    @aposentados = Motorista.where("status = 'Aposentado'").order(:data_de_nasc)
    @licenca_medica = Motorista.where("status = 'Licença Médica'").order(:data_de_nasc)
    @falta = Motorista.where("status = 'Processo Administrativo de Falta'").order(:data_de_nasc)
    @nao_localizados = Motorista.where("local = 'Não Localizado'").order(:data_de_nasc)
  end
  
  def geral_contribuicao
    @motoristas = Motorista.all.order(:data_posse)
    @vila_mariana = Motorista.where("local = 'TRAF V. MARIAN.' AND status ='Ativo'").order(:data_posse)
    @vila_guilherme = Motorista.where("local = 'TRAF V. GUILH.' AND status ='Ativo'").order(:data_posse)
    @recorps = Motorista.where("local = 'RECORPS' AND status ='Ativo'").order(:data_posse)
    @outras_areas = Motorista.where("local = 'Outras Áreas' AND status ='Ativo'").order(:data_posse)
    @readaptados = Motorista.where("status ='Readaptado'").order(:data_posse)
    @aposentados = Motorista.where("status = 'Aposentado'").order(:data_posse)
    @licenca_medica = Motorista.where("status = 'Licença Médica'").order(:data_posse)
    @falta = Motorista.where("status = 'Processo Administrativo de Falta'").order(:data_posse)
    @nao_localizados = Motorista.where("local = 'Não Localizado'").order(:data_posse)
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
  
  def chapeira
    @motoristas = Motorista.where("secao_original = ''") # precisa alterar
  end
  
  def outras_areas_filtrado
    @secoes = [
      @a1  = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'TRAF V. GUILH.'"),
      @a2  = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'TRAF V. MARIAN.'"),
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
  
  private
  
    def logged_in_user
      unless logged_in?
        redirect_to login_path
      end
    end
end
