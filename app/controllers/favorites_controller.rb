class FavoritesController < ApplicationController
    def index
        @favorites=current_user.favorites
        @follow_animes = current_user.follow_animes
    end
    
    def create
        @follow_animeable = current_user.follow_animes.new(anime_id: params[:anime_id])
        @favoritable = current_user.favorites.new(anime_id: params[:anime_id])

        if (@favoritable.save && @follow_animeable.save)
            redirect_to root_path
        else
            redirect_to animes_path, notice: @favoritable.errors
        end


       
    
        
    end
    
    def destroy
        @favoritable = current_user.favorites.find_by(anime_id: params[:anime_id])
        @favoritable.destroy
        
        redirect_to root_path
    end
end
