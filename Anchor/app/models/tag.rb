class Tag < ActiveRecord::Base
    attr_accessible :name
    validates :name, :presence => true,
                     :format => {:with => /\A\w+\Z/}
end
