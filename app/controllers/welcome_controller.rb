class WelcomeController < ApplicationController
  layout 'welcome'
  include AuthenticatedSystem

  before_filter :login_required

  def index
    @hall = Hall.find_by_date(Time.today)
    @user = User.find(session[:user_id])
    #@hall.users.each do |user|
    #  if user.id == @user.id 
    #    flash.now[:notice] = "Azedo"
    #    render :action => 'winner'
    #    break
    #  end
    #end
  end  

end
