Rails.application.routes.draw do
  root to: redirect('/auth/smart')

  match '/auth/smart/callback', to: 'authorizations#smart', via: [:get, :post]
  match '/auth/failure', to: 'authorizations#failure', via: :get
end
