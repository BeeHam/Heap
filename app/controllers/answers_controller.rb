class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    if @answer.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
  end

  def update
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    if params[:vote] == "up"
      @answer.vote += 1
      @answer.save
      redirect_to question_path(@question)
    elsif params[:vote] == "down"
      @answer.vote -= 1
      @answer.save
      redirect_to question_path(@question)
    else
      if @answer.update(answer_params)
        redirect_to question_path(@question)
      else
        render :edit
      end
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy
      redirect_to question_path(@question)
  end

  private

  def answer_params
    params.require(:answer).permit(:answer_content, :answer_author, :vote, :star)
  end
end
