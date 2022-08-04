class AddCommentToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :comment, :string
  end
end
