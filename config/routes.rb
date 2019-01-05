Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/transactions/account', to: 'transactions#account_transactions'
  post '/transactions', to: 'transactions#create'
end
