class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :town
      t.integer :zip_code
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
