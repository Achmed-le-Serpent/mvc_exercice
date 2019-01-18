# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: 'users'
  devise_for :admins, path: 'admins'
  root 'home#landing_page'

  get '/home', to: 'home#landing_page'

  namespace 'administration' do
    get '/', to: 'items#index'

    resources :items
  end
end
