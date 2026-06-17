class PaymentsController < ApplicationController
  def create
    @donation_campaign = DonationCampaign.find(params[:donation_campaign_id])
    @payment = @donation_campaign.payments.build(payment_params)
    @payment.status = :Pending
    
    if @payment.save
      redirect_to @donation_campaign, notice: "Thank you for your donation!"
    else
      redirect_to @donation_campaign, alert: "Donation failed. Please try again."
    end
  end

  private

  def payment_params
    params.expect(payment: [ :name, :amount, :comment ])
  end
end    
