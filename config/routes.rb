# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  devise_scope :user do
    authenticated :user do
      root 'employees#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :employees, except: [:show]
  resources :departments, except: [:show]
end
