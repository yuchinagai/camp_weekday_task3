Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/calcs/:int_first/:arithmetic/:int_second' => 'calcs#show'
end
