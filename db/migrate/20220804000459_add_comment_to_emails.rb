class AddCommentToEmails < ActiveRecord::Migration[7.0]
  def change
    add_column :emails, :comment, :string
  end
end
