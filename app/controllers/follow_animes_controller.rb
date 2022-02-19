class FollowAnimesController < ApplicationController
    def index
        @follow_animes = current_user.follow_animes
    end
    
    def create
        @follow_animeable = current_user.follow_animes.new(anime_id: params[:anime_id])
        if @follow_animeable.save
            redirect_to "/"
        else
            redirect_to animes_path, notice: @follow_animeable.errors
        end
    end
    
    def destroy
        
        @follow_animeable = current_user.follow_animes.find_by(anime_id: params[:anime_id])      
        
    
        @favoritable = current_user.favorites.find_by(anime_id: params[:anime_id])
        if @favoritable.present?
            @follow_animeable.destroy
            @favoritable.destroy
            redirect_to "/"
        else
            @follow_animeable.destroy
            redirect_to "/"
        end
        
            
       
    end
end
