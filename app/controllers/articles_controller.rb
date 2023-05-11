class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)
    if articles.save
    redirect_to articles_path
    else
      render :new
    end
  end

  private

  def articles_params
    params.require(article).permit(:title, :content)
  end
end
