class AddMeetupDateAndTimeToGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :meetup_date, :date
    add_column :groups, :meetup_time, :time
  end
end
