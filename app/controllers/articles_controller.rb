class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @user = User.find(session[:current_user_id]) unless session[:current_user_id].nil?
  end

  def new
    @article = Article.new
  end

  def create
    @user = User.find(session[:current_user_id])
    @article = Article.new(article_params.merge(author_id: @user.id))

    if @article.save
      redirect_to @article
    else
      render :new
    end 
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  def random
    redirect_to Article.random
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
