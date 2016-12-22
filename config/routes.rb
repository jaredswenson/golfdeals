Rails.application.routes.draw do

  devise_for :courses, controllers: {
        sessions: 'courses/sessions',
        registrations: "courses/registrations"
      }
  
   devise_for :players, controllers: {
        sessions: 'players/sessions',
        registrations: "players/registrations"
      }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "home#index"
end
