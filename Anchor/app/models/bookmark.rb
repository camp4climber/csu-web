class Bookmark < ActiveRecord::Base
    attr_accessible :title, :notes, :url, :rating, :public, :views, :user_id
    
    def view
        self.increment!(:views)
    end
end
