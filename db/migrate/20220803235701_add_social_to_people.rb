class AddSocialToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :social_security, :string
  end
end
