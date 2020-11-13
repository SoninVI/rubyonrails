class PagesController < ApplicationController
  def index
    @pages =Page.all
  end

  def show
    @page = Page.find_by_id(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @pages = Page.new(page_params)
    if @pages.save
      redirect_to pages_path
    else
      render :pages
    end
  end

  def edit
    @page = Page.find_by_id(params[:id])
  end

  def update
    @page = Page.find_by_id(params[:id])
    if @page.update(page_params)
      redirect_to pages_path
    else
      render :edit
    end
   
  end


  def destroy
    @page = Page.find_by_id(params[:id])
    @page.destroy
    redirect_to pages_path
  end




  private
  def page_params
    params.require(:page).permit(:name, :url, :content, :title, :keywords, :disc,  :active )
  end

end
