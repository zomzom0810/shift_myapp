class AddHourlyWageToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :hourly_wage, :integer
  end
end
