class Payment < ApplicationRecord
  belongs_to :donation_campaign
  validates :amount, presence: true, numericality: { only_integer: true, greater_than: 0 }  
end
