class User < ActiveRecord::Base
    attr_accessible :f_name, :l_name, :username, :password, :email
    validates :f_name, :presence => true
    validates :l_name, :presence => true
    validates :username, :presence => true,
                         :uniqueness => {:case_sensitive => false},
                         :length => {:in => (3..15)},
                         :exclusion => {:in => ["Admin", "Root"]},
                         :format => {:with => /\A\w+\Z/}
    validates :password, :presence => true,
                         :length => {:in => (5..15)}
    validates :email, :presence => true,
                      :uniqueness => {:case_sensitive => false},
                      :format => {:with => /\A.+@.+\Z/}

end
