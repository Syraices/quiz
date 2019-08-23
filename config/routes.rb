Rails.application.routes.draw do
  root 'teams#index'
  resource :teams, only:[:create, :new]
end
