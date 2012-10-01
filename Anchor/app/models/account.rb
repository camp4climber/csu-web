class Account < ActiveRecord::Base
  attr_accessible :name
  has_many :bookmarks
  has_many :followings
  has_many :followers
end

class Following < ActiveRecord::Base
  belongs_to :account 
end

class Follower < ActiveRecord::Base
  belongs_to :account
end
