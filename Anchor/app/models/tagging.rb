class Tagging < ActiveRecord::Base
    attr_accessible :bookmark_id, :tag_id
    belongs_to :bookmark
    validates :bookmark_id, :presence => true
    validates :tag_id, :presence => true
end
