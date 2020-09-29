class AnswersController < ApplicationController
  def new
    @country = Country.find(params[:country_id])
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @country = Country.find(params[:country_id])
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    if @answer.valid?
      @answer.save
      redirect_to country_question_path(@country, @question)
    else
      render :new
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:content).merge(user_id: current_user.id, question_id: params[:question_id])
  end
end
