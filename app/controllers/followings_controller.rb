class FollowingsController < ApplicationController
  def index
    @user = User.find()
  end

  def new
    @following = Following.new
  end

  def create
    @following = Following.new(following_params)

    if @following.save
      redirect_to user_path(@following.followed)
    else
      redirect_to picture_path(@following.picture)
    end
  end
  
  def show
    @user = User.find(params[:id])
  end

  def destroy
    @following = Following.find(params[:id])
    @user = User.find(@following.followed_id)
    @following.destroy
    redirect_to user_path(@user)
  end

  private

  def following_params
    params.require(:following).permit(:followers_id, :followed_id)
  end
end
