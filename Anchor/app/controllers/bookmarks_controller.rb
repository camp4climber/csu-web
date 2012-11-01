class BookmarksController < ApplicationController
    
    def create
        @bookmark = Bookmark.new(params[:bookmark])
        @user = User.find(params[:bookmark][:user_id])
        
        if @bookmark.url[0..6] != "http://" or @bookmark.url[0..7] != "https://" 
            @bookmark.url = "http://" + @bookmark.url
        end

        if @bookmark.save
            redirect_to @user, :alert => "Created Successfully"
        else
            render "bookmarks/new" 
        end                        
    end
    
    def new
        @bookmark = Bookmark.new
    end
    
    def edit
        @bookmark = Bookmark.find(params[:id])
    end
    
    def show
        @bookmark = Bookmark.find(params[:id])
        @tags = Tagging.find_all_by_bookmark_id(params[:id])
        @tagging = Tagging.new
    end
    
    def update
        @bookmark = Bookmark.find(params[:id])

        if @bookmark.update_attributes(params[:photo])
            redirect_to @bookmark, :alert => "Updated Bookmark"
        else
            render "edit"
        end
    end
    
    def destroy
        @bookmark = Bookmark.find(params[:id])
        @bookmark.destroy
        redirect_to popular_bookmarks_url, :alert => "Bookmark Destroyed" #to user page?
    end
    
    def popular
        @bookmarks = Bookmark.order("views DESC").limit(15)
    end

end
