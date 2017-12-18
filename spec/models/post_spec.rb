require 'rails_helper'

describe Post do
  it { should have_and_belong_to_many :users }
  it { should validate_presence_of :game_title }
  it { should validate_presence_of :players_needed }
  it { should validate_presence_of :location }
  it { should validate_presence_of :play_location }
end
