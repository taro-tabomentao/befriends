class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(new_question_params)
    if @question.valid?
      @question.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(edit_question_params)
      redirect_to question_path(@question)
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    if @question.destroy
      redirect_to user_path(current_user)
    else
      render :show
    end
  end

  def show
    @question = Question.find(params[:id])
    @answers = Answer.where(question_id: params[:id]).order(id: 'desc')
  end

  private

  def new_question_params
    params.require(:question).permit(:title, :category_id, :country_id, :text).merge(user_id: current_user.id, status_id: 1)
  end

  def edit_question_params
    params.require(:question).permit(:title, :category_id, :country_id, :text, :status_id).merge(user_id: current_user.id)
  end
end
