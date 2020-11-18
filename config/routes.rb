Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/titos" => "titos#index"
    post "/titos" => "titos#create"
    get "/titos/:id" => "titos#show"
    patch "/titos/:id" => "titos#update"
  end
end

