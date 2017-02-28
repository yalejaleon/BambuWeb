Rails.application.routes.draw do
  get 'nosotros/index'

  get 'paquetes/index'

  get 'servicios/index'

  resources :tb_comentarios
  resources :tb_formulario_clientes
  resources :tb_servicios
  resources :tb_cita
  resources :tb_detalle_solicituds
  resources :tb_solicituds
  resources :tb_clientes
  get 'pregunta/preguntas'

  get 'principal/index'
  get 'tb_organizacions/index'
  get 'tb_clientes/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
