class Group < ActiveRecord::Base
  validates :game_title, :players_needed, :location, :play_location, :presence => true
  has_many :memberships
  has_many :users, through: :memberships

  def self.search(search)
    where("name LIKE ? OR game_title LIKE ? OR location LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end

  def self.not_full
    groups = Group.all
    not_full = []
    groups.each do |group|
      if group.players_needed < group.memberships.length
        not_full.push(group)
      end
    end
    not_full
  end
end
