class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @section = Section.find(params[:section_id])
    @question = @section.questions.new
  end

  def create
    @section = Section.find(params[:section_id])
    @question = @section.questions.new(question_params)
    if @question.save
      redirect_to section_path(@section)
    else
      render :new
    end
  end

  def edit
    @section = Section.find(params[:section_id])
    @question = @section.questions.find(params[:id])
  end

  def update
    @section = Section.find(params[:section_id])
    @question = @section.questions.find(params[:id])
    if @question.update(question_params)
      redirect_to section_path(@section)
    else
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:section_id])
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to section_path(@section)
  end

  private
  def question_params
    params.require(:question).permit(:question_title, :question_content, :question_author, :tag_list)
  end
end
