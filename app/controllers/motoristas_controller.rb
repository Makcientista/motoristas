class MotoristasController < ApplicationController
  
  def new
    @motorista = Motorista.new
  end
  
  def create
    @motorista = Motorista.new(motorista_params)
    if @motorista.save
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  def show
    # @motorista = Motorista.find_by(rf: rf)
  end
  
  def edit
    # @motorista = Motorista.find_by(rf: rf)
  end
  
  def update
    # @motorista = Motorista.find(rf: rf)
    # if @motorista.update_attributes(motorista_params)
    #   redirect_to root_url
    # else
    #   render 'edit'
    # end
  end
  
  def destroy
    # Motorista.find(rf: rf).destroy
    # redirect_to root_url
  end
  
  private

    def motorista_params
      params.require(:motorista).permit(:nome, :rf, :cargo, :secao_original, 
                                        :secao_atual, :pontuacao, :local, :status)
    end
  
end
