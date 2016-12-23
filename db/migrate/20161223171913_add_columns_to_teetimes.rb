class AddColumnsToTeetimes < ActiveRecord::Migration[5.0]
  def change
  	add_column :teetimes, :endtime, :datetime
  	rename_column :teetimes, :time, :starttime
  end
end
