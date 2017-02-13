Rails.application.routes.draw do
  root 'epicenter#feed'

  get 'show_post' => 'epicenter#show_post'

  get 'user_posts' => 'epicenter#user_posts'

  get 'new_post' => 'epicenter#new_post'

  post 'create_post' => 'epicenter#create_post'

  post 'create_comment' => 'epicenter#create_comment'

  get 'upvote' => 'epicenter#upvote'

  get 'downvote' => 'epicenter#downvote'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
