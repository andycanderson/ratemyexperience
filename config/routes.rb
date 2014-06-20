Rails.application.routes.draw do
  get '/' => 'review#index'
  post '/new_comment' => 'review#create'
end
