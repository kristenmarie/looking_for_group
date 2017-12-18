require 'rails_helper'

describe Group do
  it { should have_many(:users).through(:memberships) }
  it { should validate_presence_of :game_title }
  it { should validate_presence_of :players_needed }
  it { should validate_presence_of :location }
  it { should validate_presence_of :play_location }
end
