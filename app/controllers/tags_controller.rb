class TagsController < ApplicationController
  def show
    @questions = Question.tagged_with(params[:tag])
  end
end
