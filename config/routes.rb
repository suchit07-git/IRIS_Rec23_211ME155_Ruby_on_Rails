Rails.application.routes.draw do
  resources :student_registrations
  resources :faculty_profiles
  resources :student_profiles
  resources :courses
  get 'home/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  authenticated :user do
    root 'home#index', as: :authenticated_root
  end

  authenticated :user, lambda { |u| u.admin? } do
    namespace :admin do
      resources :users, only: [:index, :edit, :update]
      root to: 'dashboard#index'
    end
  end

  namespace :student do
    get 'dashboard', to: 'dashboard#index'
    get 'dashboard/update_profile', to: 'dashboard#update_profile'
    get 'dashboard/course_registration', to: 'dashboard#course_registration', as: 'course_registration'
    get 'dashboard/show_courses', to: 'dashboard#show_courses', as: 'show_courses'
    post 'students/dashboard/course_registration/create_course_registration', to: 'students#dashboard#course_registration#create_course_registration', as: 'create_course_registration'
  end

  namespace :faculty do
    get 'dashboard', to: 'dashboard#index'
  end

  resources :courses, only: [:new, :create]
  # resources :registrations, only: [:new, :destroy]

  root to: redirect('/users/sign_in')
end
