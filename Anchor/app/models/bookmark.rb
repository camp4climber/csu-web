class Bookmark < ActiveRecord::Base
  attr_accessible :desc, :image, :name, :rating
  belongs_to :account
  has_many :tags
end
