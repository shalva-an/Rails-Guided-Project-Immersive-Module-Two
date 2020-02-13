class TagsController < ApplicationController
  def index
  end
  
  def new
    @tags = Tag.all
  end
  
  def create
    @tag = Tag.new(tag_params)
    @tag.user_id = current_user.id
    
    if @tag.save
      redirect_to picture_path(@tag.picture)
    else
      redirect_to picture_path(@tag.picture)
    end
  end
  
  def show
    @tag = Tag.find(params[:id])
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
    Tag.find(params[:id]).destroy
    redirect_to picture_path
  end
  
  def tag_params
    params.require(:tag).permit(:name)
  end
end
