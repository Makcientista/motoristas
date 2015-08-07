class MotoristasController < ApplicationController
  before_action :logged_in_user
  
  def new
    @motorista = Motorista.new
    @secoes = [
      'TRAF V. GUILH.',
      'TRAF V. MARIAN.',
      'RECORPS',
      'ADM.CEMIT.',
      'AG. FORMOSA',
      'AG. H.S.P.M.',
      'AG.ARACA',
      'AG.CENTRAL',
      'AG.Q. PARADA',
      'ALMOX.',
      'C.N.CACHOE.',
      'C.SANTANA',
      'Ch. DIV.DE TRANS.',
      'Crematório',
      'D. PRODUCAO',
      'EST. URNAS CAIX',
      'ETQ URNAS CAIX',
      'EXP. TRAF',
      'FISCALIZ.',
      'FM 21',
      'MAN. DA SEDE',
      'MAN.A.VERDES',
      'MANUT. DA SEDE',
      'S. PEDRO',
      'S. PESSOAL',
      'S. SOC./ FM.21',
      'VEL. S. PAULO',
      'VELORIO ARACA',
      'VISTORIA',
      'Velório Santana',
      'PROTOCOLO',
      'CEMIT.PARELHEIROS',
      'CEMIT.QUARTA PARADA',
      'VELORIO ITAQUERA',
      'Tráfego/Fax',
      'Mot. Almox.',
      'CONTABILIDADE'
    ]
  end
  
  def create
    @motorista = Motorista.new(motorista_params)
    if @motorista.save
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  def index
    if @motorista = Motorista.find_by(rf: params[:search])
      redirect_to @motorista
    else
      redirect_to root_url
    end
  end
  
  def show
    @motorista = Motorista.find(params[:id])
  end
  
  def edit
    @motorista = Motorista.find(params[:id])
    @secoes = [
      'TRAF V. GUILH.',
      'TRAF V. MARIAN.',
      'RECORPS',
      'ADM.CEMIT.',
      'AG. FORMOSA',
      'AG. H.S.P.M.',
      'AG.ARACA',
      'AG.CENTRAL',
      'AG.Q. PARADA',
      'ALMOX.',
      'C.N.CACHOE.',
      'C.SANTANA',
      'Ch. DIV.DE TRANS.',
      'Crematório',
      'D. PRODUCAO',
      'EST. URNAS CAIX',
      'ETQ URNAS CAIX',
      'EXP. TRAF',
      'FISCALIZ.',
      'FM 21',
      'MAN. DA SEDE',
      'MAN.A.VERDES',
      'MANUT. DA SEDE',
      'S. PEDRO',
      'S. PESSOAL',
      'S. SOC./ FM.21',
      'VEL. S. PAULO',
      'VELORIO ARACA',
      'VISTORIA',
      'Velório Santana',
      'PROTOCOLO',
      'CEMIT.PARELHEIROS',
      'CEMIT.QUARTA PARADA',
      'VELORIO ITAQUERA',
      'Tráfego/Fax',
      'Mot. Almox.',
      'CONTABILIDADE'
    ]
  end
  
  def update
    @motorista = Motorista.find(params[:id])
    if @motorista.update_attributes(motorista_params)
      redirect_to root_url
    else
      render 'edit'
    end
  end
  
  def destroy
    Motorista.find(params[:id]).destroy
    redirect_to root_url
  end
  
  private

    def motorista_params
      params.require(:motorista).permit(:nome, :rf, :cargo, :secao_original, 
                                        :secao_atual, :pontuacao, :local, :status,
                                        :data_de_nasc, :data_posse)
    end
  
    def logged_in_user
      unless logged_in?
        redirect_to login_path
      end
    end
end
