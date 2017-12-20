require 'rails_helper'

describe Membership do
  it { should belong_to :group }
  it { should belong_to :user }

  before :each do
    Membership.destroy_all
    @membership1 = FactoryBot.create(:membership)
    @membership2 = FactoryBot.create(:membership)
  end

  describe 'pending status scope' do
    it 'returns all memberships with pending status' do
      @membership2.update!(:status => 'accepted')
      expect(Membership.pending.length).to eq(1)
    end
  end

  describe 'accepted status scope' do
    it 'returns all memberships with accepted status' do
      @membership2.update!(:status => 'accepted')
      expect(Membership.accepted.length).to eq(1)
    end
  end
end
