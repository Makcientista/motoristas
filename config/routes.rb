Rails.application.routes.draw do
  
  get 'listas/vila_mariana'
  get 'listas/vila_guilherme'
  get 'listas/licenca_medica'
  get 'listas/falta'
  get 'listas/recorps'
  get 'listas/outras_areas'
  get 'listas/readaptados'
  get 'listas/aposentados'
  get 'listas/geral'
  resources :motoristas
  
end
