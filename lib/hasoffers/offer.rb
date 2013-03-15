module HasOffers
  
  class Offer < Base

    Target = 'Offer'

    class << self

      # Offer - Base
      def create(data, return_object = false)
        requires!(data, %w[name description advertiser_id offer_url preview_url protocol status expiration_date])
        params = build_data data, return_object
        post_request(Target, 'create', params)
      end

      def find_all(params = {})
        post_request(Target, 'findAll', params)
      end

      def find_all_by_ids(data)
        requires!(data, %w[ids])
        params = build_data data
        post_request(Target, 'findAllByIds', params)
      end

      def find_all_featured_offer_ids(params = {})
        post_request(Target, 'findAllFeaturedOfferIds', params)
      end

      def find_all_ids(params = {})
        post_request(Target, 'findAllIds', params)
      end

      def find_all_ids_by_advertiser_id(data)
        requires!(data, %w[advertiser_id])
        params = build_data data
        post_request(Target, 'findAllIdsByAdvertiserId', params)
      end

      def find_all_ids_by_affiliate_id(data)
        requires!(data, %w[affiliate_id])
        params = build_data data
        post_request(Target, 'findAllIdsByAffiliateId', params)
      end

      def find_all_pending_affiliate_approvals(params = {})
        post_request(Target, 'findAllPendingAffiliateApprovals', params)
      end

      def find_by_id(data)
        requires!(data, %w[id])
        params = build_data data
        post_request(Target, 'findById', params)
      end

      def generate_tracking_link(data)
        requires!(data, %w[offer_id affiliate_id])
        params = build_data data
        post_request(Target, 'generateTrackingLink', params)
      end

      def generate_tracking_pixel(data)
        requires!(data, %w[offer_id])
        params = build_data data
        post_request(Target, 'generateTrackingPixel', params)
      end

      def get_overview(params = {})
        post_request(Target, 'getOverview', params)
      end
      
      def get_thumbnail(data)
        requires!(data, %w[id])
        params = build_data data
        post_request(Target, 'getThumbnail', params)
      end

      def update(data, return_object = false)
        params = build_data data, return_object
        post_request(Target, 'update', params)
      end

      def update_field(data, return_object = false)
        requires!(data, %w[id field value])
        params = build_data data, return_object
        post_request(Target, 'updateField', params)
      end

      # Offer - Geo Targeting

      # Offer - Browser Targeting

      # Offer - Offer Categories

      # Offer - Offer Group

      # Offer - Offer Affiliate Settings

      def find_all_affiliate_settings(params = {})
        post_request(Target, 'findAllAffiliateSettings', params)
      end

      def set_payout(data, return_object = false)
        requires!(data, %w[id])
        params = build_data data, return_object
        post_request(Target, 'setPayout', params)
      end

      # Offer - Offer Access

      def set_affiliate_approval(data, return_object = false)
        requires!(data, %w[id affiliate_id status])
        params = build_data data, return_object
        post_request(Target, 'setAffiliateApproval', params)
      end

      # Offer - Offer Files

      # Offer - Offer URLs

      # Offer - Offer Pixels

      # Offer - Customer Lists

    end
    
  end
  
end