Rails.application.routes.draw do
  
  root                    'pages#home'
  get 'vila_mariana'   => 'listas#vila_mariana'
  get 'vila_guilherme' => 'listas#vila_guilherme'
  get 'licenca_medica' => 'listas#licenca_medica'
  get 'falta'          => 'listas#falta'
  get 'recorps'        => 'listas#recorps'
  get 'outras_areas'   => 'listas#outras_areas'
  get 'readaptados'    => 'listas#readaptados'
  get 'aposentados'    => 'listas#aposentados'
  get 'geral'          => 'listas#geral'
  resources :motoristas
  
end
