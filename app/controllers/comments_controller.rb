class CommentsController < ApplicationController
  def index
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.index
    
    if @comment.save
      redirect_to picture_path(@comment.picture)
    else
      redirect_to picture_path(@comment.picture)
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @comment = Comment.find(params[:id])
    @picture = @comment.picture
    @comment.destroy
    redirect_to picture_path(@picture)
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :picture_id, :content)
  end
end
