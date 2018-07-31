Rails.application.routes.draw do
  root to: 'weather#index'
  get 'search', to: 'weather#search'
  get 'forecast', to: 'weather#forecast'
end
