Rails.application.routes.draw do
  get 'events/index'
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
}
   root to: 'events#index'
   resources :events, except: :index
end
