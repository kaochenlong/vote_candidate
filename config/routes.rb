Rails.application.routes.draw do
  resources :candidates do
    member do
      post :vote, to: "candidates#vote"
    end
  end
end
