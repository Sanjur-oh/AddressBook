class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :salutation
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :phone_number
      t.string :ssn
      t.date :dob
      t.string :address
      t.string :comment

      t.timestamps
    end
  end
end
