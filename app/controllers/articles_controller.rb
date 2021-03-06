class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by_url(params[:url])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path
    else
      render :new
    end
  end

  def edit
    @article = Article.find_by_url(params[:url])
  end

  def update
    @article = Article.find_by_url(params[:url])
    if @article.update(article_params)
      redirect_to article_path
    else
      render :edit
    end
      # render :article
  end

  def destroy
    @article = Article.find_by_url(params[:url])
    @comment = @article.comments(params[:article_url])
    @comment.destroy

    redirect_to article_path
  end

  def destroy_all
    @articles = Article.all
    @articles.destroy_all
    redirect_to article_path
  end


  private
    def article_params
      params.require(:article).permit(:name, :url, :text)
    end





end
