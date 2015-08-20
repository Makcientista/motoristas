class UsersController < ApplicationController
    add_breadcrumb "Página Inicial", :root_path
    add_breadcrumb "Cadastrar Usuário", :signup_path

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Usuário Cadastrado com sucesso."
      redirect_to root_url
    else
      render 'new'
    end
  end
  
    private

    def user_params
      params.require(:user).permit(:rf, :password, :password_confirmation)
    end
end
