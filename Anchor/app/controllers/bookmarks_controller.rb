class BookmarksController < ApplicationController
    def index
        @bookmarks = all_bookmarks
    end
    def create
        redirect_to bookmarks_url, :alert => "Created Successfully"
    end
    def new
        render :template => "bookmarks/new.html.erb"
    end
    def edit
        render :template => "bookmarks/edit.html.erb"
    end
    def show
        @bookmark = all_bookmarks[params[:id].to_i]
    end
    def update
        redirect_to bookmark_url(params[:id]), :alert => "Updated Successfully"
    end
    def destroy
        redirect_to bookmarks_url, :alert => "Deleted Bookmark"
    end

    private

    def all_bookmarks
        [{:url => "http://www.google.com", :title => "Google", :notes => "awesome search", :screenthumb => "linkthumb.jpg", :screenshot => "anchorscreenshot.png", :tags => ["Anchor", "Chico"], :rating => "4.5", :public =>"#"},
         {:url => "http://www.amazon.com", :title => "Amazon", :notes => "awesome goods", :screenthumb => "linkthumb.jpg", :screenshot => "anchorscreenshot.png", :tags => ["Awesome", "Art"], :rating => "3", :public =>"\""}]
    end
end
