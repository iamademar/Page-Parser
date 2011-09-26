class CreateFeedEntries < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :summary
      t.string :url
      t.datetime :published_at
      t.string :guid
      t.text :content
      t.string :author
      t.timestamps
    end
  end
end
