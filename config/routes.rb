Rails.application.route.draw do
  get"/fortune_url" => 'api/fortune_page#fortune_action'
  get "/lotto_url" => 'api/numbers#lotto_action'
  get "/counter_url" => 'api/numbers#counter_action'
end
