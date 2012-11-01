class UsersController < ApplicationController
    def create
        @user = User.new(params[:user])

        if @user.save
            redirect_to @user, :alert => "Created Successfully"
        else
            render "users/new"
        end
    end

    def new
        @user = User.new
        render "users/new"
    end
    
    def edit
        @user = User.find(params[:id])
        render :template => "users/edit.html.erb"
    end
    
    def show
        @user = User.find(params[:id])
        @bookmarks = Bookmark.find_all_by_user_id(params[:id])
        render :template => "users/show.html.erb"
    end
    
    def update
        redirect_to user_url(params[:id]), :alert => "Updated Successfully"
    end
end
