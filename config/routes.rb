BugId::Application.routes.draw do
  resources :bugs

  root :to => "bugs#index"
end
