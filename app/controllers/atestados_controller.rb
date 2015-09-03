class AtestadosController < ApplicationController
  
  def create
    @motorista = Motorista.find(params[:id])
    @atestado = @motorista.atestados.build(picture: params[:atestado][:picture])
    if @atestado.save
      redirect_to @motorista
    else
     redirect_to @motorista
      flash[:danger] = "#{@atestado.errors.full_messages.to_sentence}"
    end
  end

  def destroy
    @atestado = Atestado.find(params[:id])
    @motorista = @atestado.motorista
    @atestado.destroy
    redirect_to @motorista
  end
end
