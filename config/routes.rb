Rails.application.routes.draw do
  get 'third/endpoint'

  get 'second/awful_login'
  post 'second/better_login'

  get 'first/echo'
end
