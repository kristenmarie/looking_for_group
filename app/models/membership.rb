class Membership < ActiveRecord::Base
  belongs_to :group
  belongs_to :user
  scope :pending, -> { where(status: 'pending') }
  scope :approved, -> { where(status: 'approved')}
  scope :rejected, -> { where(status: 'rejected')}
end
