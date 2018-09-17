class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_one :feed_content, as: :content, dependent: :destroy

  #callback
  after_create :create_feed_content
  after_update :update_feed_content

  #validation
  validates_presence_of :user_id, :text

  private
  def create_feed_content
    self.feed_content = FeedContent.create(group_id: question.group_id, updated_at: updated_at)
  end

  def update_feed_content
    self.feed_content.update(updated_at: updated_at)
  end
end
