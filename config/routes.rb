Rails.application.routes.draw do

  get 'players/index'

  get 'players/show'

  get 'courses/index'

  get 'courses/show'

  devise_for :courses, controllers: {
        sessions: 'courses/sessions',
        registrations: "courses/registrations"
      }
  
   devise_for :players, controllers: {
        sessions: 'players/sessions',
        registrations: "players/registrations"
      }

      get '/' => 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "home#index"
end
