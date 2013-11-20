ContactsBook::Application.routes.draw do
  resources :contacts

  root 'contacts#home'

  get '/index' => 'contacts#index', as: :view
end
