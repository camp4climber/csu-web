class UsersController < ApplicationController
    def index
        @users = all_users
    end
    def create
        redirect_to users_url, :alert => "Created Successfully"
    end
    def new
        render :template => "users/new.html.erb"
    end
    def edit
        render :template => "users/edit.html.erb"
    end
    def show
        @user = all_users[params[:id].to_i]
    end
    def update
        redirect_to user_url(params[:id]), :alert => "Updated Successfully"
    end
    def destroy
        redirect_to users_url, :alert => "Deleted User"
    end
    def signup
    end

    private

    def all_users
        [{:username => "Tim", :password => "abc123", :email => "tim@anchor.io", :first_name => "Tim", :last_name => "Whitaker", :avatar => "joeavatar.jpg"},
         {:username => "Joe", :password => "abc123", :email => "Joe@anchor.io", :first_name => "Joe", :last_name => "User", :avatar => "joeavatar.jpg"}]
    end
end

