class Tagging < ActiveRecord::Base
    attr_accessible :bookmark_id, :tag_id
    belongs_to :bookmark
    validates :bookmark_id, :presence => true
    validates :tag_id, :presence => true

    def get_bookmark
        @bookmark = Bookmark.find(self.bookmark_id)
    end

    def get_tag
        @tag = Tag.find(self.tag_id)
    end
end
