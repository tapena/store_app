Rails.application.routes.draw do
  get"/fortune_url" => 'api/example_pages#fortune'
  get "/lotto_url" => 'api/example_pages#lotto'
  get "/counter_url" => 'api/example_pages#counter'
end
