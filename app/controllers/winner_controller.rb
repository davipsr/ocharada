class WinnerController < ApplicationController

  include AuthenticatedSystem

  before_filter :login_required
  
  def create    
    hall = Hall.find_by_date(Time.today)
    user = User.find(session[:user_id])
    if hall.charade.answer == params[:answer]
      @winner = Winner.new
      @winner.hall_id = hall.id
      @winner.user_id = session[:user_id]
      user.hits += 1
      @winner.attempts = user.get_attempts
      if @winner.save
        flash.now[:notice] = "Parabéns! Você está na lista dos vencedores!"      
      end
    else
      user.attempts += 1      
      flash[:notice] = "Ops, " + user.attempts.to_s + "ª tentativa incorreta! Tente Novamente!"
    end
    user.save
    redirect_to :controller => 'welcome'
  end
end
