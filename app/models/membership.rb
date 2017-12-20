class Membership < ActiveRecord::Base
  belongs_to :group
  belongs_to :user
  scope :pending, -> { where(status: 'pending') }
  scope :accepted, -> { where(status: 'accepted')}
  scope :rejected, -> { where(status: 'rejected')}
end
