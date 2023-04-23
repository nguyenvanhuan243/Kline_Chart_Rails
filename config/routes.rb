Rails.application.routes.draw do
  resources :kline_charts
  root to: "kline_charts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
