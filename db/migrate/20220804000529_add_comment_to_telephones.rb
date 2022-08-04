class AddCommentToTelephones < ActiveRecord::Migration[7.0]
  def change
    add_column :telephones, :comment, :string
  end
end
