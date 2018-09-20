Rails.application.routes.draw do
  get 'second/awful_login'
  post 'second/better_login'

  get 'first/echo'
end
