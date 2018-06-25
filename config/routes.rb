Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get "/random_fortune_url" => "api/pages#random_fortune_action"
  get "/lotto_numbers_url" => "api/pages#lotto_numbers_action"
end
