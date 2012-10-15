class BookmarksController < ApplicationController
    def index
        @bookmarks = all_bookmarks
    end
    def create
        redirect_to bookmarks_url, :alert => "Created Successfully"
    end
    def new
    end
    def edit
    end
    def show
        @bookmark = all_bookmarks[params[:id].to_i]
    end
    def update
        flash[:alert] = "Updated Successfully"
    end
    def destroy
    end

    private

    def all_bookmarks
        [{:url => "", :title => "testing 1", :notes => "", :tags => "", :rating => "", :public =>""},
         {:url => "", :title => "testing 2", :notes => "", :tags => "", :rating => "", :public =>""}]
    end
end
