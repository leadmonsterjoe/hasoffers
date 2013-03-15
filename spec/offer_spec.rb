require 'spec_helper'

describe HasOffers::Offer do
  describe "class methods" do
    subject { HasOffers::Offer }

    # Offer - Base
    describe ".create" do
      let(:params) do
        { 'name' => 'FindMeAnywhere',
          'description' => 'This is a test.',
          'advertiser_id' => '1', 
          'offer_url' => 'http://google.com',
          'preview_url' => 'http://google.com',
          'protocol' => 'server',
          'status' => 'pending',
          'expiration_date' => '1/1/2018' }
      end

      it "is successful" do
        HasOffers::Offer.create(params).should be_successful
      end
    end

    describe ".find_all" do
      it "is successful" do
        HasOffers::Offer.find_all.should be_successful
      end
    end

    describe ".find_all_by_ids" do
      let(:params) do
        { 'ids' => [1,2,3] }
      end

      it "is successful" do
        HasOffers::Offer.find_all_by_ids(params).should be_successful
      end
    end

    describe ".find_all_featured_offer_ids" do
      it "is successful" do
        HasOffers::Offer.find_all_featured_offer_ids.should be_successful
      end
    end

    describe ".find_all_ids" do
      it "is successful" do
        HasOffers::Offer.find_all_ids.should be_successful
      end
    end

    describe ".find_all_ids_by_advertiser_id" do
      let(:params) do
        {'advertiser_id' => 1}
      end

      it "is successful" do
        HasOffers::Offer.find_all_ids_by_advertiser_id(params).should be_successful
      end
    end

    describe ".find_all_ids_by_affiliate_id" do
      let(:params) do
        {'affiliate_id' => 2}
      end

      it "is_successful" do
        HasOffers::Offer.find_all_ids_by_affiliate_id(params).should be_successful
      end
    end

    describe ".find_all_pending_affiliate_approvals" do
      it "is_successful" do
        HasOffers::Offer.find_all_pending_affiliate_approvals.should be_successful
      end
    end

    describe ".find_by_id" do
      let(:params) do
        {'id' => 1}
      end
      
      it "is_successful" do
        HasOffers::Offer.find_by_id(params).should be_successful
      end
    end

    describe ".generate_tracking_link" do
      let(:params) do
        {'offer_id' => [1,2,3], 'affiliate_id' => [1,2,3]}
      end

      it "is_successful" do
        HasOffers::Offer.generate_tracking_link(params).should be_successful
      end
    end

    describe ".generate_tracking_pixel" do
      let(:params) do
        {'offer_id' => "1"}
      end

      it "is_successful" do
        HasOffers::Offer.generate_tracking_pixel(params).should be_successful
      end
    end

    describe ".get_overview" do
      it "is_successful" do
        HasOffers::Offer.get_overview.should be_successful
      end
    end

    describe ".get_thumbnail" do
      let(:params) do
        { 'id' => [1] }
      end

      it "is_successful" do
        HasOffers::Offer.get_thumbnail(params).should be_successful
      end
    end

    describe ".update" do
      it "is successful" do
        HasOffers::Offer.update(1, 'status' => "active").should be_successful
      end
    end

    describe ".update_field" do
      let(:params) do
        {"id" => 1, "field" => "Name", "value" => "New Name"}
      end
      
      it "is successful" do
        HasOffers::Offer.update_field(params).should be_successful
      end
    end

    # Offer - Geo Targeting

    # Offer - Browser Targeting

    # Offer - Offer Categories

    # Offer - Offer Group

    # Offer - Offer Affiliate Settings
    describe ".find_all_affiliate_settings" do
      it "is successful" do
        HasOffers::Offer.find_all_affiliate_settings.should be_successful
      end
    end

    describe ".set_payout" do
      let(:params) do
        {"id" => 2}
      end

      it "is successful" do
        HasOffers::Offer.set_payout(params).should be_successful
      end
    end

    # Offer - Offer Access
    describe ".set_affiliate_approval" do
      let (:params) do
        {"id" => 2,
        "affiliate_id" => 2,
        "status" => "approved" }
      end

      it "is successful" do
        HasOffers::Offer.set_affiliate_approval(params).should be_successful
      end
    end

    # Offer - Offer Files

    # Offer - Offer URLs

    # Offer - Offer Pixels

    # Offer - Customer Lists

  end
end
