class WelcomeController < ApplicationController

  def index
    @hall = Hall.find_by_date(Time.today)
  end
  

#  def send
#    user = User.find_by_gravatar(params[:gravatar])
#    if user.nil?
#      user = User.new(params[:name], params[:gravatar])
#    end
#    user.hits = users.hits + 1
#    user.save
#    redirect_to :action => 'index'
#  end

end
