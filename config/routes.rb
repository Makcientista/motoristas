Rails.application.routes.draw do
  
  get 'sessions/new'

  root                           'pages#home'
  get 'vila_mariana'          => 'listas#vila_mariana'
  get 'vila_guilherme'        => 'listas#vila_guilherme'
  get 'licenca_medica'        => 'listas#licenca_medica'
  get 'falta'                 => 'listas#falta'
  get 'recorps'               => 'listas#recorps'
  get 'outras_areas'          => 'listas#outras_areas'
  get 'outras_areas_filtrado' => 'listas#outras_areas_filtrado'
  get 'readaptados'           => 'listas#readaptados'
  get 'aposentados'           => 'listas#aposentados'
  get 'geral'                 => 'listas#geral'
  get 'relatorio'             => 'pages#relatorio'
  get 'geral_idade'           => 'listas#geral_idade'
  get 'geral_contribuicao'    => 'listas#geral_contribuicao'
  get 'chapeiras_diversas'    => 'listas#chapeiras_diversas'
  get 'consultar_motoristas'  => 'pages#consultar_motoristas'
  get 'listar_motoristas'     => 'pages#listar_motoristas'
  get 'buscar_motoristas'     => 'pages#buscar_motoristas'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :motoristas
  
end
