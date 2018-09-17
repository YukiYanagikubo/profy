class Group < ApplicationRecord

  has_many :users
  has_many :questions, ->{ order("created_at DESC") }
  has_many :feed_contents, ->{ order("updated_at DESC") }
end
