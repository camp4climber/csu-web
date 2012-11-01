class TaggingsController < ApplicationController
    before_filter :load_bookmark

    def create
        @tagging = Tagging.new(params[:tagging])
        @tag = Tag.create(:name => params[:name])
        @tagging.bookmark_id = params[:bookmark_id]
        @tagging.tag_id = @tag.id

        if @tagging.save
            redirect_to @bookmark, :alert => "Success"
        else
            render :back
        end
    end

    def destroy
        @tagging = Tagging.find_by_tag_id(params[:id])
        @tag = Tag.find(params[:id])
        @tag.destroy
        @tagging.destroy
        redirect_to @bookmark, :alert => "Destroyed"
    end

    private

    def load_bookmark
        @bookmark = Bookmark.find(params[:bookmark_id])
    end
end
