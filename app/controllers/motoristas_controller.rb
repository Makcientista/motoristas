class MotoristasController < ApplicationController
  before_action :logged_in_user
  
  def new
    @motorista = Motorista.new
    @secoes = secoes
  end
  
  def create
    @secoes = secoes
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
      flash[:danger] = "Não foi encontrado nenhum motorista com este RF"
      redirect_to root_url
    end
  end
  
  def show
    @motorista = Motorista.find(params[:id])
  end
  
  def edit
    @motorista = Motorista.find(params[:id])
    @secoes = secoes
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
