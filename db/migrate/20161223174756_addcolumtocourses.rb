class Addcolumtocourses < ActiveRecord::Migration[5.0]
  def change
  	add_column :courses, :phone, :string
  end
end
