class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by_username(params[:session][:username].downcase)

        if @user.authenticate(params[:session][:password])
            reset_session
            session[:user_id] = @user.id
            redirect_to @user, :alert => "Logged in"
        else
            redirect_to :back, :alert => "Failed!"
        end
    end

    def destroy
        reset_session
        redirect_to root_url
    end
end
