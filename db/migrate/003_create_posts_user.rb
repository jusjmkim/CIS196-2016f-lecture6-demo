class CreatePostsUser < ActiveRecord::Migration
  def change
    create_table :posts_users do |t|
      t.references :user
      t.references :post
      t.timestamps null: false
    end
  end
end
