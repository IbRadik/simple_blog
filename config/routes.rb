# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v2 do
      get 'articles/create'
    end
  end
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  namespace :api do
    namespace :v2 do
      resources :articles
    end
  end

  root 'welcome#index'
end
