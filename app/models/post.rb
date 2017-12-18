class Post < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :game_title, :players_needed, :location, :play_location, :presence => true 

end
