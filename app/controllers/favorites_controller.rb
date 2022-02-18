class FavoritesController < ApplicationController
    def index
        @favorites=current_user.favorites
    end
    
    def create
        @favoritable = current_user.favorites.new(anime_id: params[:anime_id])
        if @favoritable.save
            redirect_to "/"
        else
            redirect_to coins_path, notice: @favoritable.errors
        end
    end
    
    def destroy
        @favoritable = current_user.favorites.find_by(anime_id: params[:anime_id])
        @favoritable.destroy
        redirect_to "/"
    end
end
