# frozen_string_literal: true

Rails.application.routes.draw do
  get 'search/index'
  get 'search/result'
  get 'search/studentResult'
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

  resources :search, only: [:index] do
    collection do
      get 'result'
    end
  end

  resources :search, only: [:index] do
    collection do
      get 'studentResult'
    end
  end
end
