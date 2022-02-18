module FollowAnimesHelper
    def falow_anime(anime)
        current_user.follow_animes.find_by(anime_id:anime.id)
    end


end
