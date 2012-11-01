class CreateBookmarks < ActiveRecord::Migration
    def up
        create_table :bookmarks do |b|
            b.integer :user_id
            b.string :url
            b.string :title
            b.text :notes
            b.float :rating
            b.boolean :public
            b.integer :views
            b.timestamps
        end
    end

    def down
        drop_table :bookmarks
    end
end
