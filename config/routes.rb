Rails.application.routes.draw do
    root to: 'users#index'
    resources :users, only: :index
    resources :messages, only: :index
    get  'index' =>'messages#index'
    post 'confirm' => 'messages#confirm'
    post 'done' => 'messages#done'
end
