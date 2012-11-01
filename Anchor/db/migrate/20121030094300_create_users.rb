class CreateUsers < ActiveRecord::Migration
    def up
        create_table :users do |u|
            u.string :f_name
            u.string :l_name
            u.string :username
            u.string :password
            u.string :email
        end
    end

    def down
        drop_table :users
    end
end
