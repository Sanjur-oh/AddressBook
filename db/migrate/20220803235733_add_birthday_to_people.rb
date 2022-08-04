class AddBirthdayToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :birthday, :date
  end
end
