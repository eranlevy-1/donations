class AddCommentToPayments < ActiveRecord::Migration[8.1]
  def change
    add_column :payments, :comment, :text
  end
end
