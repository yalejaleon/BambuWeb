Rails.application.routes.draw do
  resources :tb_servicios
  resources :tb_cita
  resources :tb_detalle_solicituds
  resources :tb_solicituds
  resources :tb_clientes
  get 'pregunta/preguntas'

  get 'principal/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
