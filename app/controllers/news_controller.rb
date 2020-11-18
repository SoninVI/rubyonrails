class NewsController < ApplicationController
  def index
    @news = New.all
  end

  def show
    @new = New.find_by_id(params[:id])
  end

  def new
    @new = New.new
  end

  def create
    @news = New.new(new_params)

    if @news.save
      redirect_to new_path
    else
      render :news
    end
  end

  def edit
    @new = New.find_by_id(params[:id])
  end

  def update
    @new = New.find_by_id(params[:id])
    if @new.update(new_params)
      redirect_to news_path
    else
      render :edit
    end

  end


  def destroy
    @new = New.find_by_id(params[:id])
    @new.destroy
    redirect_to new_path
  end



  private
  def new_params
    params.require(:new).permit(:name, :url, :content, :title, :keywords, :disc,  :active )
  end

end
