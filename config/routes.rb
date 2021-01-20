Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
}
   root to: 'events#index'
   resources :events, except: :index
   resources :users, only:[:show]
end
