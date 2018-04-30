Rails.application.routes.draw do
  get 'static_pages/_navbar'
  get 'static_pages/_form'
  get 'static_pages/_footer'
  get 'static_pages/about'
  mount Cartify::Engine, at: '/'
  resources :products
  root controller: :products, action: :index
end
