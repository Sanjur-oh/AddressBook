class AddMiddleNameToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :middle_name, :string
  end
end
