Rails.application.routes.draw do
  root 'courses#index'
  get 'courses', to: 'courses#new'
  post 'courses', to: 'courses#create'
  get 'about', to: 'pages#about'
  resources :students, except: [:destroy]
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  delete 'logout', to: 'logins#destroy'
  post 'course_enroll', to: 'student_courses#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
