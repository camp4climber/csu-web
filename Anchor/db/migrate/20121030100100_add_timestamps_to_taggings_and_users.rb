class AddTimestampsToTaggingsAndUsers < ActiveRecord::Migration
    def change
        add_column :taggings, :created_at, :datetime
        add_column :taggings, :updated_at, :datetime
        add_column :users, :created_at, :datetime
        add_column :users, :updated_at, :datetime
    end
end
