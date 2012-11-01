class TagsController < ApplicationController
    def index
        @tags = Tag.all
    end

    def show    
        @tag = Tag.find(params[:id])
        @taggings = Tagging.find_all_by_tag_id(@tag.id)
    end
end
