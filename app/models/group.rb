class Group < ActiveRecord::Base
  validates :game_title, :players_needed, :location, :play_location, :presence => true
  has_many :memberships
  has_many :users, through: :memberships

  def self.search(search)
    where("name LIKE ? OR game_title LIKE ? OR location LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
