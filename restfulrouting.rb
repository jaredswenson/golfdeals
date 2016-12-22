        Prefix Verb   URI Pattern                      Controller#Action
                home_index GET    /home/index(.:format)            home#index
        new_course_session GET    /courses/sign_in(.:format)       courses/sessions#new
            course_session POST   /courses/sign_in(.:format)       courses/sessions#create
    destroy_course_session DELETE /courses/sign_out(.:format)      courses/sessions#destroy
       new_course_password GET    /courses/password/new(.:format)  devise/passwords#new
      edit_course_password GET    /courses/password/edit(.:format) devise/passwords#edit
           course_password PATCH  /courses/password(.:format)      devise/passwords#update
                           PUT    /courses/password(.:format)      devise/passwords#update
                           POST   /courses/password(.:format)      devise/passwords#create
cancel_course_registration GET    /courses/cancel(.:format)        courses/registrations#cancel
   new_course_registration GET    /courses/sign_up(.:format)       courses/registrations#new
  edit_course_registration GET    /courses/edit(.:format)          courses/registrations#edit
       course_registration PATCH  /courses(.:format)               courses/registrations#update
                           PUT    /courses(.:format)               courses/registrations#update
                           DELETE /courses(.:format)               courses/registrations#destroy
                           POST   /courses(.:format)               courses/registrations#create
        new_player_session GET    /players/sign_in(.:format)       players/sessions#new
            player_session POST   /players/sign_in(.:format)       players/sessions#create
    destroy_player_session DELETE /players/sign_out(.:format)      players/sessions#destroy
       new_player_password GET    /players/password/new(.:format)  devise/passwords#new
      edit_player_password GET    /players/password/edit(.:format) devise/passwords#edit
           player_password PATCH  /players/password(.:format)      devise/passwords#update
                           PUT    /players/password(.:format)      devise/passwords#update
                           POST   /players/password(.:format)      devise/passwords#create
cancel_player_registration GET    /players/cancel(.:format)        players/registrations#cancel
   new_player_registration GET    /players/sign_up(.:format)       players/registrations#new
  edit_player_registration GET    /players/edit(.:format)          players/registrations#edit
       player_registration PATCH  /players(.:format)               players/registrations#update
                           PUT    /players(.:format)               players/registrations#update
                           DELETE /players(.:format)               players/registrations#destroy
                           POST   /players(.:format)               players/registrations#create
                      root GET    /                                home#index
