Rails.application.routes.draw do

 get 'posts/new' => 'posts#new'
 post 'posts/create' => 'posts#create'

 root 'posts#index'
 get 'posts/show/:post_id'=> 'posts#show'
 get 'posts/show2/:post_id'=> 'posts#show2'
 
  get 'posts/edit/:post_id' => 'posts#edit'
 post 'posts/update/:post_id' => 'posts#update'
 
 post 'posts/destroy/:post_id' => 'posts#destroy'
 
 #comment
 post '/comments/create/:post_id' => 'comments#create'
 post '/posts/show/:post_id/destroy/:comment_id' => 'comments#destroy'
end
