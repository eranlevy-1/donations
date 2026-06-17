class DonationCampaignsController < ApplicationController
  before_action :set_campaign, only: %i[ show edit update destroy ]

  def index
    @campaigns = DonationCampaign.all
  end

  def show
    @payments = @campaign.payments.order(created_at: :desc)
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
  end

  def update
    @campaign = DonationCampaign.find(params[:id])
    if @campaign.update(campaign_params)
      redirect_to @campaign
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @campaign.destroy
    redirect_to donation_campaigns_path
  end

  private
    def campaign_params
      params.expect(donation_campaign: [ :title, :goal, :bonus_goal, :short_description, :description, :featured_image  ])
    end

    def set_campaign
      @campaign = DonationCampaign.find(params[:id])
    end
    
end
