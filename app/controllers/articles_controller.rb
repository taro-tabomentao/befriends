class ArticlesController < ApplicationController

  def new
    @country = Country.find(params[:country_id])
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
     redirect_to country_path(params[:country_id])
    else
      render :new
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :category_id, :content, :image).merge(country_id: params[:country_id], user_id: current_user.id)
  end


end
