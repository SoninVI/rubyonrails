class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find_by_id(params[:id])
  end

  def new
    @tag = Tag.new
  end

   def create
    @tags = Tag.new(tag_params)
    if @tags.save
      redirect_to tags_path
    else
      render :tags
    end
   end

  def edit
    @tag = Tag.find_by_id(params[:id])
  end

  def update
    @tag = Tag.find_by_id(params[:id])
    if @tag.update(tag_params)
      redirect_to tags_path
    else
      render :edit
    end

  end

  def destroy
    @tag = Tag.find_by_id(params[:id])
    @tag.destroy
    redirect_to tags_path
  end

  def arcticle_tags
    article = Article.find_by_id(params[:article_id])
    @tags = article.tags.new(tag_params)
    if @tags.save
      redirect_to   article_show_path(article.url)
    else
      render :tags
    end
  end




  private
  def tag_params
    params.require(:tag).permit(:name, :articl_id)
  end

end
