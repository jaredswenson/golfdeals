class AddColumnToTeeTimes < ActiveRecord::Migration[5.0]
  def change
  	add_column :teetimes, :holes, :integer
  end
end
