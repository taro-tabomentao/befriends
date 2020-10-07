class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @articles = Article.where(user_id: params[:id]).order(id: 'desc')
    @user_events = UserEvent.where(user_id: params[:id]).order(id: 'desc')
    @questions = Question.where(user_id: params[:id]).order(id: 'desc')
  end

  def edit
    @user = User.find(params[:id])
  end 

  def update
    @user = User.find(params[:id])
    if current_user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :gender_id, :country_id, :city, :birthday, :language, :image, :password, :password_confirmation, :email)
  end
end
