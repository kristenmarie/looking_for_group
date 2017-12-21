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
      @membership2.update!(:status => 'approved')
      expect(Membership.pending.length).to eq(1)
    end
  end

  describe 'accepted status scope' do
    it 'returns all memberships with accepted status' do
      @membership2.update!(:status => 'approved')
      expect(Membership.approved.length).to eq(1)
    end
  end

  describe 'rejected status scope' do
    it 'returns all memberships with rejected status' do
      @membership1.update!(:status => 'rejected')
      expect(Membership.rejected.length).to eq(1)
    end
  end
end
