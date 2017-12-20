require 'rails_helper'

describe Membership do
  it { should belong_to :group }
  it { should belong_to :user }
end
