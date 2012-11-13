class User < ActiveRecord::Base
    has_secure_password
    attr_accessible :f_name, :l_name, :username, :password, :password_confirmation, :email
    

    validates :f_name, :presence => true
    validates :l_name, :presence => true
    validates :username, :presence => true,
                         :uniqueness => {:case_sensitive => false},
                         :length => {:in => (3..15)},
                         :exclusion => {:in => ["Admin", "Root"]},
                         :format => {:with => /\A\w+\Z/}
    validates :password, :presence => true,
                         :length => {:minimum => 5},
                         :confirmation => true
    validates :email, :presence => true,
                      :uniqueness => {:case_sensitive => false},
                      :format => {:with => /\A.+@.+\Z/}

end
