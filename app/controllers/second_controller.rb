class SecondController < ApplicationController
  def awful_login
    render status: 404 if request.post?
  end

  def better_login
    render :warning if request.get?
  end
end
