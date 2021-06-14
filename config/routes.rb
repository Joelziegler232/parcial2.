Rails.application.routes.draw do
  resources :guards
  resources :medical_center_workers
  resources :appointments
  resources :worker_types
  resources :workers
  resources :medical_center_types
  resources :medical_centers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "medical_center_types#index"
end
