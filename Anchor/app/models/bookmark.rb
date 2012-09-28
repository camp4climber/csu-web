class Bookmark < ActiveRecord::Base
  attr_accessible :desc, :image, :name, :rating
end
