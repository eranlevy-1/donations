class DonationCampaignsController < ApplicationController
  def index
    @campaigns = DonationCampaign.all
  end

  def show
    @campaign = DonationCampaign.find(params[:id])
  end

  def new
    @campaign = DonationCampaign.new
  end

  def create
    @campaign = DonationCampaign.new(campaign_params)
    if @campaign.save
      redirect_to @campaign
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @campaign = DonationCampaign.find(params[:id])
  end

  def update
    @campaign = DonationCampaign.find(params[:id])
    if @campaign.update(campaign_params)
      redirect_to @campaign
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def campaign_params
      params.expect(donation_campaign: [ :title, :goal, :bonus_goal ])
    end  
end
