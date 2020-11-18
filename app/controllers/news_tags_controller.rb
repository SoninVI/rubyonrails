class NewsTagsController < ApplicationController
  def index
    @news_tags = NewsTag.all
  end

  def new
    @news_tag = NewsTag.new
  end

  def create
    @news_tag= NewsTag.new(new_tag_params)
    if @news_tag.save
      redirect_to news_tags_path
    else
      render :new
    end
  end

  private
  def new_tag_params
    params.require(:news_tag).permit(:name, :description)
  end

end
