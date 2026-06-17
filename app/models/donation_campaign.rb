class DonationCampaign < ApplicationRecord
    has_many :payments

    validates :title, presence: true
    validates :goal, presence: true
    has_rich_text :description
    has_one_attached :featured_image

    def total_raised
        payments.sum(:amount)
    end

    def num_payments
        payments.count(:amount)
    end    

    def core_progress_percentage
        return 0 if goal.zero?
        [[((total_raised.to_f / goal) * 100).round, 0].max, 100].min
    end    
end
