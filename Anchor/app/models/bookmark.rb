class Bookmark < ActiveRecord::Base
    attr_accessible :title, :notes, :url, :rating, :public, :views, :user_id
    has_many :taggings
    
    validates :title, :presence => true
    validates :notes, :presence => true,
                      :length => {:maximum => 1000}
    validates :url, :presence => true
    validates :rating, :presence => true,
                       :length => {:in => (0..5)} 

    def view
        self.increment!(:views)
    end
end
