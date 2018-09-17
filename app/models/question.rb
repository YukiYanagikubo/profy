class Question < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :answers

  validates_presence_of :user_id, :text, :group_id

  def user_answer(user_id)
    Answer.find_by(user_id: user_id, question_id: id)
  end

end
