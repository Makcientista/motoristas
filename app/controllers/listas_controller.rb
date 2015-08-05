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
    @secoes = [
      @a1	 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'ADM.CEMIT.'"),
      @a2	 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'AG. FORMOSA'"),
      @a3	 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'AG. H.S.P.M.'"),
      @a4	 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'AG.ARACA'"),
      @a5	 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'AG.CENTRAL'"),
      @a6	 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'AG.Q. PARADA'"),
      @a7	 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'ALMOX.'"),
      @a8	 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'C.N.CACHOE.'"),
      @a9	 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'C.SANTANA'"),
      @a10 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'Ch. DIV.DE TRANS.'"),
      @a11 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'Crematório'"),
      @a12 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'D. PRODUCAO'"),
      @a13 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'EST. URNAS CAIX'"),
      @a14 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'ETQ URNAS CAIX'"),
      @a15 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'EXP. TRAF'"),
      @a16 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'FISCALIZ.'"),
      @a17 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'FM 21'"),
      @a18 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'MAN. DA SEDE'"),
      @a19 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'MAN.A.VERDES'"),
      @a20 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'MANUT. DA SEDE'"),
      @a21 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'S. PEDRO'"),
      @a22 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'S. PESSOAL'"),
      @a23 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'S. SOC./ FM.21'"),
      @a24 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'VEL. S. PAULO'"),
      @a25 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'VELORIO ARACA'"),
      @a26 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'VISTORIA'"),
      @a27 = Motorista.where("local = 'Outras Áreas' AND status ='Ativo' AND secao_atual = 'Velório Santana'")
    ]
  end
  
  private
  
    def logged_in_user
      unless logged_in?
        redirect_to login_path
      end
    end
end
