require 'rails_helper'

describe User do
  it { should have_and_belong_to_many :posts }
  it { should validate_presence_of :username }
end
