class PicturesController < ApplicationController
  def new
    @picture = Picture.new
    @user = current_user
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id 
    
    if @picture.save
      redirect_to picture_path(@picture)
    else
      redirect_to new_picture_path
    end
  end
  
  def show 
    @picture = Picture.find(params[:id])
    @comment = Comment.new(picture_id: @picture.id, user_ud: 1)
    @reaction = Reaction.new(picture_id: @picture.id, user_id: current_user.id)
    @comments = @picture.comments
  end

  def edit
  end

  def update
  end
  
  def destroy
    Picture.find(params[:id]).destroy
    redirect_to user_path(current_user)
  end

  private

  def picture_params
    params.require(:picture).permit(:image_url, :title, :user_id, {:tag_ids => []})
  end
end
