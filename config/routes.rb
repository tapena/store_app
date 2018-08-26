Rails.application.route.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get"/fortune_url" => 'api/fortune_page#fortune_action'
end
