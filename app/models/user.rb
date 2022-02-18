class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: [:otaku, :admin]
  has_many :follow_animes 
  has_many :favorites   
  has_many :animes, through: :favorites   
  has_many :animes, through: :follow_animes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
