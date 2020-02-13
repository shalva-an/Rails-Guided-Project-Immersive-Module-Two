class ReactionsController < ApplicationController
    def create
        @reaction = Reaction.new
        @picture = Picture.find(params[:reaction][:picture_id])
        @reaction.picture_id = params[:reaction][:picture_id]
        @reaction.user_id = current_user.id
        @reaction.reaction_key = params[:reaction][:reaction_key]
        
        if @reaction.save
            redirect_to picture_path(@picture)
        else
            redirect_to picture_path(@picture)
        end
    end
    
    private
    
    def reaction_params
        params.require(:reaction).permit(:user_id, :picture_id, :reaction_key)
    end
end
