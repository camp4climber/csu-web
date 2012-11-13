class ApplicationController < ActionController::Base
  protect_from_forgery
    
  before_filter :load_current_user, :load_new_user

  protected

  def load_current_user
      @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def load_new_user
      @new_user = User.new
  end

end
