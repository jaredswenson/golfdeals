class AddColumnsToPlayers < ActiveRecord::Migration[5.0]
  def change
  	add_column :players, :subscription_type, :string
  	add_column :players, :payment_method, :string
  	add_column :players, :email_opt_in, :string
  end
end

