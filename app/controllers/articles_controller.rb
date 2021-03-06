class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :create, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)
    @article.save

    redirect_to root_path
  end

  def edit
  end

  def update
    @article.update(article_params)

    redirect_to root_path
  end

  def destroy
    @article.destroy

    redirect_to root_path
  end


  private

  def article_params
    params.require(:article).permit(:title, :content, :picture, :description, :first, :themes)
  end

  def find_article
    @article = Article.find(params[:id])
  end

end
