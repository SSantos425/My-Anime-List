module FavoritesHelper
    def favorite(anime)
        current_user.favorites.find_by(anime_id:anime.id)
    end

end
