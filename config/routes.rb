Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:cocktails do
    resources:doses, only: [:new,:create,:show]
  end
  delete 'doses/:id(.:format)', :to => 'doses#destroy', as: "delete_dose"
end
