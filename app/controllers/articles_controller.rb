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

  def show
    @country = Country.find(params[:country_id])
    @article = Article.find(params[:id])
  end

  def edit
    @country = Country.find(params[:country_id])
    @article = Article.find(params[:id])
  end

  def update
    @country = Country.find(params[:country_id])
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to country_article_path(@country, @article)
    else
      render :edit
    end
  end

  def destroy
    @country = Country.find(params[:country_id])
    @article = Article.find(params[:id])
    if @article.destroy
      redirect_to country_path(@country)
    else
      render :show
    end
  end


  private
  def article_params
    params.require(:article).permit(:title, :category_id, :content, :image).merge(country_id: params[:country_id], user_id: current_user.id)
  end


end
