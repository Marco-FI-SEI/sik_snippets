Rails.application.routes.draw do
  resources :snippet_categories do
    resources :snippets
  end
end
