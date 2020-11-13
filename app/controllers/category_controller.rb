class CategoryController < ApplicationController

  def index
    @categoryes = Category.all
  end

  def show
    @category = Category.find_by_id(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @categoryes = Category.new(category_params)
    if @categoryes.save
      redirect_to category_path
    else
      render :category
    end
  end

  def edit
    @category = Category.find_by_id(params[:id])
  end

  def update
    @category = Category.find_by_id(params[:id])
    if @category.update(category_params)
      redirect_to category_path
    else
      render :edit
    end

  end

  def destroy
    @category = Category.find_by_id(params[:id])
    @category.destroy
    redirect_to category_path
  end



  private
  def category_params
    params.require(:category).permit(:name, :url, :title, :keywords, )
  end
end
