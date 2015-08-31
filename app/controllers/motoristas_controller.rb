class MotoristasController < ApplicationController
  before_action :logged_in_user
  before_action :eh_admin,  only: [:destroy] 
  add_breadcrumb "Página Inicial", :root_path
  add_breadcrumb "Consultar Motoristas", :consultar_motoristas_path
  
  def new
    add_breadcrumb "Cadastrar Motorista", :new_motorista_path
    @motorista = Motorista.new
    @secoes = secoes
    @chapeiras = chapeiras
  end
  
  def create
    @secoes = secoes
    @chapeiras = chapeiras
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
      flash[:danger] = "Não foi encontrado nenhum motorista com este RF."
      redirect_to buscar_motoristas_path
    end
  end
  
  def show
    add_breadcrumb "Buscar Motoristas", :buscar_motoristas_path
    @motorista = Motorista.find(params[:id])
    add_breadcrumb "Motorista", :motorista_path
  end
  
  def edit
    redirect_to :controller => 'motoristas', :action => 'edit_servico_social', :id => params[:id] if current_user.tipo == 'Serviço Social'
    redirect_to :controller => 'motoristas', :action => 'edit_trafego', :id => params[:id] if current_user.tipo == 'Tráfego'
    @motorista = Motorista.find(params[:id])
    add_breadcrumb "Editar Motorista", :edit_motorista_path
    @secoes = secoes
    @chapeiras = chapeiras
  end
  
  def edit_servico_social
    @motorista = Motorista.find(params[:id])
    add_breadcrumb "Editar Motorista - Serviço Social", :edit_servico_social_path
  end
  
  def edit_trafego
    @motorista = Motorista.find(params[:id])
    add_breadcrumb "Editar Motorista - Tráfego", :edit_trafego_path
  end
  
  def update
    @motorista = Motorista.find(params[:id])
    Registro.create(params_antes(@motorista))
    if @motorista.update_attributes(motorista_params)
      Registro.create(params_depois(@motorista))
      redirect_to listar_motoristas_path
    else
      render 'edit'
    end
  end
  
  def destroy
    Motorista.find(params[:id]).destroy
    redirect_to listar_motoristas_path
  end
  
  private

    def motorista_params
      params.require(:motorista).permit(:nome, :rf, :cargo, :secao_original, 
                                        :secao_atual, :pontuacao, :local, :status,
                                        :data_de_nasc, :data_posse)
    end
    
    def params_antes(m)
      {
        nome: m.nome, rf: m.rf, cargo: m.cargo, 
        secao_original: m.secao_original, secao_atual: m.secao_atual,
        pontuacao: m.pontuacao, status: m.status, local: m.local,
        data_de_nasc: m.data_de_nasc, data_posse: m.data_posse, momento: 'Antes', user: "#{current_user.nome} - #{current_user.tipo}"
      }
    end
    
    def params_depois(m)
      {
        nome: m.nome, rf: m.rf, cargo: m.cargo, 
        secao_original: m.secao_original, secao_atual: m.secao_atual,
        pontuacao: m.pontuacao, status: m.status, local: m.local,
        data_de_nasc: m.data_de_nasc, data_posse: m.data_posse, momento: 'Depois', user: "#{current_user.nome} - #{current_user.tipo}"
      }
    end
end
