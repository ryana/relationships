class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :forum_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
