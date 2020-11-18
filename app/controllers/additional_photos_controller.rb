class AdditionalPhotosController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    p '1111111111111'
    p params
    article = Article.find_by_url(params[:url])
    @additional_photo = article.build_additional_photo(additional_photos_params)
    if @additional_photo.save
      redirect_to article_show_path(params[:url])
    else
      redirect_to article_show_path(params[:url])
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

private

def additional_photos_params
  params.require(:additional_photo).permit(:image, :alt)
end