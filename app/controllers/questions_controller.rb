class QuestionsController < ApplicationController
  def new
    @country = Country.find(params[:country_id])
    @question = Question.new
  end

  def create
    @question = Question.new(new_question_params)
    if @question.valid?
      @question.save
     redirect_to country_path(params[:country_id])
    else
      render :new
    end
  end

  def edit
    @country = Country.find(params[:country_id])
    @question = Question.find(params[:id])
  end

  def update
    @country = Country.find(params[:country_id])
    @question = Question.find(params[:id])
    if @question.update(edit_question_params)
      redirect_to country_question_path(@country, @question)
    else
      render :edit
    end
  end

  def destroy
    @country = Country.find(params[:country_id])
    @question = Question.find(params[:id])
    if @question.destroy
      redirect_to country_path(@country)
    else
      render :show
    end
  end

  def show
    @country = Country.find(params[:country_id])
    @question = Question.find(params[:id])
    @answers = Answer.where(question_id: params[:id]).order(id: "desc")
  end

  private
  def new_question_params
    params.require(:question).permit(:title, :category_id, :text).merge(user_id: current_user.id, country_id: params[:country_id],status_id: 2)
  end

  def edit_question_params
    params.require(:question).permit(:title, :category_id, :text, :atatus_id).merge(user_id: current_user.id, country_id: params[:country_id])
  end
end


