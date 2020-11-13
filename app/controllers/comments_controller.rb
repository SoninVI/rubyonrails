class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find_by_id(params[:id])
    # p @comment.to_json
  end

  def new
    @comment = Comment.new
  end

   def create
    @comments = Comment.new(comment_params)
    if @comments.save
      redirect_to comment_path
    else
      render :comments
    end
   end

  def edit
    @comment = Comment.find_by_id(params[:id])
  end

  def update
    @comment = Comment.find_by_id(params[:id])
    if @comment.update(comment_params)
      redirect_to comment_path
    else
      render :edit
    end

  end

  def destroy
    @comment = Comment.find_by_id(params[:id])
    @comment.destroy
    redirect_to comment_path
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :article_id)
  end


end
