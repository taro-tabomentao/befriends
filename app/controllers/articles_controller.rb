class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
    @comments = Comment.where(article_id: params[:id]).includes(:user)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      redirect_to user_path(current_user)
    else
      render :show
    end
  end

  def search
    @articles = Article.search(params[:keyword]).order(id: 'desc')
  end

  private

  def article_params
    params.require(:article).permit(:title, :country_id, :category_id, :content, :image).merge(user_id: current_user.id)
  end
end
