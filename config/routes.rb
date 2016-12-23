Rails.application.routes.draw do

  devise_for :courses, controllers: {
        sessions: 'courses/sessions',
        registrations: "courses/registrations"
      }
  
   devise_for :players, controllers: {
        sessions: 'players/sessions',
        registrations: "players/registrations"
      }

      resources :teetimes

      get '/course/home' => 'courses#index', as: 'courses_home'
      get '/player/home' => 'players#index', as: 'players_home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "home#index"
end
