class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :image
      t.string :name
      t.string :description
      t.string :bid
      t.string :donar

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
