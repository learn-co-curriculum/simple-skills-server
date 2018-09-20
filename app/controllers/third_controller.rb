class ThirdController < ApplicationController
  def endpoint
    # Highly unsafe in Real Life (tm), but we're just printing params
    params.permit!
  end
end

