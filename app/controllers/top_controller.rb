class TopController < ApplicationController

  def index
    @question = Question.new
    @questions = current_user.group.questions
  end

end
