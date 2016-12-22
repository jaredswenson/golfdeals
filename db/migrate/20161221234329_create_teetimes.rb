class CreateTeetimes < ActiveRecord::Migration[5.0]
  def change
    create_table :teetimes do |t|
      t.references :course, foreign_key: true
      t.decimal :cost
      t.datetime :time

      t.timestamps
    end
  end
end
