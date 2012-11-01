class User < ActiveRecord::Base
    attr_accessible :f_name, :l_name, :username, :password, :email
end
