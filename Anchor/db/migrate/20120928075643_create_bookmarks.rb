class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :name
      t.float :rating
      t.text :desc
      t.string :image

      t.timestamps
    end
  end
end
