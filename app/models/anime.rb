class Anime < ApplicationRecord
    has_many :follow_animes
    has_many :favorites
    has_many :users, through: :favorites 
    has_many :users, through: :follow_animes
end
