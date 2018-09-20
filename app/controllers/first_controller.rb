class FirstController < ApplicationController
  layout 'first'

  def echo
    @partial = if params[:full_name]
                 :full
               elsif params[:first_name] && params[:family_name]
                 :assemble
               else
                 :data_missing
               end
  end
end
