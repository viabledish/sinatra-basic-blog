class CreatePosts < ActiveRecord::Migration
  def up
  	create_table :posts do |t|
  		t.string :title
  		t.text :body
  		t.timestamps
  	end
  	Post.create(title: "first post", body: "i really wish i was more creative and actually think of some good content to write here")
  	Post.create(title: "second post", body: "poopy diapers")
  	Post.create(title: "third post", body: "this blog will contain no capital letters and really piss people off")
  end

  def down
  	drop_table :posts
  end
end
