class CreateDonationCampaigns < ActiveRecord::Migration[8.1]
  def change
    create_table :donation_campaigns do |t|
      t.string :title
      t.integer :goal
      t.integer :bonus_goal

      t.timestamps
    end
  end
end
