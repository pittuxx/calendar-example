class ChangeColumnsInMeetings < ActiveRecord::Migration
  def self.up
  	change_column :meetings, :starts, :time
  	change_column :meetings, :ends, :time
  	add_column	:meetings, :meeting_date, :date
  end

  def self.down
  	change_column :meetings, :starts, :datetime
  	change_column :meetings, :ends, :datetime
  	remove_column	:meetings, :meeting_date, :date
  end
end
