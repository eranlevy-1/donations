class CreatePayments < ActiveRecord::Migration[8.1]
  def change
    create_table :payments do |t|
      t.references :donation_campaign, null: false, foreign_key: true
      t.integer :amount
      t.string :name

      t.timestamps
    end
  end
end
