class DonationCampaign < ApplicationRecord
    validates :title, presence: true
    validates :goal, presence: true
end
