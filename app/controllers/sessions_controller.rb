class SessionsController < ApplicationController
  def new
  end

  def create
  	scout = Scout.find_by_email(params[:email])
  	if scout && scout.authenticate(params[:password])
  		session[:scout_id] = scout.id
  		redirect_to root_url, notice: 'Logged in'
    else
    	render :new
    end
  end

  def destroy
  	session[scout_id] = nil
  	redirect_to root_url, notice: 'Logged out'
  end
end
