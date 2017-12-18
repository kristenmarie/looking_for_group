class Group < ActiveRecord::Base
  validates :game_title, :players_needed, :location, :play_location, :presence => true
  has_many :memberships
  has_many :users, through: :memberships
end
