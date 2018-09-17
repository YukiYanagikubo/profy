class CreateFeedContents < ActiveRecord::Migration[5.0]
  def change
    create_table :feed_contents do |t|
      t.integer :content_id
      t.string  :content_type
      t.integer  :group_id
      t.timestamps
    end
  end
end
