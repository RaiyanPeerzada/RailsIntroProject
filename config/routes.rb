# frozen_string_literal: true

Rails.application.routes.draw do
  get 'about/index'
  get 'students/index'
  get 'students/show'
  get 'universities/index'
  get 'universities/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'about#index'

  resources :universities do
    resources :students
  end

  resources :students do
    resources :universities
  end

end
