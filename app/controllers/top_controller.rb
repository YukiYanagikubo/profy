class TopController < ApplicationController

  def index
    @question = Question.new
    feed_contents = current_user.group.feed_contents.includes(:content)
    @feed_contents = feed_contents.map(&:content)
  end

end
