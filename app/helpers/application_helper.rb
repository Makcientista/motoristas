module ApplicationHelper
  
  def age(dob)
    if dob
      now = Time.now.utc.to_date
      now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end
  end
  
  # Loga o usuario (user)
  def log_in(user)
    session[:user_id] = user.id
  end

  # Retorna o usuario logado atualmente (se existir um)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) # guarda o resultado em @current_user pra nao ter que 
                                                          # consultar o banco de dados toda vez que quiser achar o usuario atual
  end

  # Retorna true se o usuario estiver logado
  def logged_in?
    !current_user.nil?
  end
  
  # Da log out no usuario
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  
  def secoes
    [
      ["TRAF. V. GUILH."], ["TRAF. V. MARIAN."], ["RECORPS"], ["ADM.CEMIT."],
      ["AG. FORMOSA"], ["AG. H.S.P.M."], ["AG.ARACA"], ["AG.CENTRAL"],
      ["AG.Q. PARADA"], ["ALMOX."], ["C.N.CACHOE."], ["C.SANTANA"],
      ["Ch. DIV.DE TRANS."], ["Crematório"], ["D. PRODUCAO"], ["EST. URNAS CAIX"],
      ["ETQ URNAS CAIX"], ["EXP. TRAF"], ["FISCALIZ."], ["FM 21"], ["MAN. DA SEDE"],
      ["MAN.A.VERDES"], ["MANUT. DA SEDE"], ["S. PEDRO"], ["S. PESSOAL"],
      ["S. SOC./ FM.21"], ["VEL. S. PAULO"], ["VELORIO ARACA"], ["VISTORIA"],
      ["Velório Santana"], ["PROTOCOLO"], ["CEMIT.PARELHEIROS"], ["CEMIT.QUARTA PARADA"],
      ["VELORIO ITAQUERA"], ["Tráfego/Fax"], ["Mot. Almox."], ["CONTABILIDADE"]
    ]
  end
  
  def chapeiras
    [
      ['5'],['6'],['7'],['8'],['9'],['10'],['12'],['13'],['14'],['15'],['17'],['18'],['19'],['20'],['21'],['22'],['24'],
      ['25'],['26'],['27'],['28'],['29'],['30'],['32'],['34'],['36'],['37'],['38'],['39'],['40'],['95']
    ]
  end
  
  def logged_in_user
    unless logged_in?
      redirect_to login_path
    end
  end
  
  def eh_admin
    redirect_to root_url unless current_user.tipo == 'Administrador'
  end
  
  def eh_servico_social
    redirect_to root_url unless current_user.tipo == 'Serviço Social'
  end
  
  def eh_trafego
    redirect_to root_url unless current_user.tipo == 'Tráfego'
  end
  
  def array_tipos
    if current_user.tipo == 'Administrador'
      ["Administrador", "Serviço Social", "Tráfego"]
    elsif current_user.tipo == 'Serviço Social'
      ["Serviço Social"]
    elsif current_user.tipo == 'Tráfego'
      ["Tráfego"]
    end
  end
end
