class MultasController < ApplicationController
  
  def create
    @motorista = Motorista.find(params[:id])
    @multa = @motorista.multas.build(picture: params[:multa][:picture], user: "#{current_user.nome} (#{current_user.tipo})")
    if @multa.save
      redirect_to @motorista
    else
      redirect_to @motorista
      flash[:danger] = "#{@multa.errors.full_messages.to_sentence}"
    end
  end

  def destroy
    @multa = Multa.find(params[:id])
    @motorista = @multa.motorista
    @multa.destroy
    redirect_to @motorista
  end
end