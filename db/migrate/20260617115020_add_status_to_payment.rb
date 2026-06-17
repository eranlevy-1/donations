class AddStatusToPayment < ActiveRecord::Migration[8.1]
  def change
    add_column :payments, :status, :integer
  end
end
