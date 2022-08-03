class CreateTelephones < ActiveRecord::Migration[7.0]
  def change
    create_table :telephones do |t|
      t.string :phone_number
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
