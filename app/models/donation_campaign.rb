class DonationCampaign < ApplicationRecord
    validates :title, presence: true
    validates :goal, presence: true
    has_rich_text :description
    has_one_attached :featured_image
end
