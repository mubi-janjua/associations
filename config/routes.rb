Rails.application.routes.draw do
	resources :developers
	resources :teams
	resources :departments
	resources :emps
	resources :patients
	resources :appointments
	resources :physicians
	resources :suppliers
	resources :accounts
	resources :histories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
