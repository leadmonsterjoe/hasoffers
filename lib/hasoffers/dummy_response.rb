module HasOffers

  class DummyResponse

    class << self
    
      def response_for(target, method, params)
        body = self.send("response_for_#{target.downcase}_#{method.downcase}", params)
        DummyResponse.new(200, 'Ok', body, {})
      end

      # Assume return_object is set for simplicity which means just the id of offer is returned
      # Offer Dummy Data
      def response_for_offer_create(params)
        {"response" => { "status" => 1, "data" => rand(1_000_000).to_s } }
      end

      def response_for_offer_findall(params)
        {"response" => { "status" => 1, "data" => {"1" => {"Offer" => {"id" => "1", "name" => "FindMeNow"}}}, "errors" => {} } }
      end

      def response_for_offer_findallbyids(params)
        {"response" => { "status" => 1, "data" => {"0" => "1", "1" => "3", "2" => "6"}, "errors" => {} } }
      end

      def response_for_offer_findallfeaturedofferids(params)
        {"response" => { "status" => 1, "data" => {"1" => {"Offer" => {"id" => "1", "name" => "FindMeNow"}}}, "errors" => {} } }
      end

      def response_for_offer_findallids(params)
        {"response" => { "status" => 1, "data" => ["1", "2", "3"], "errors" => [] } }
      end

      def response_for_offer_findallidsbyadvertiserid(params)
        {"response" => {"status" => 1, "data" => ["1", "2", "3"], "errors" => [] }}
      end

      def response_for_offer_findallidsbyaffiliateid(params)
        {"response" => {"status" => 1, "data" => ["1", "2", "3"], "errors" => []}}
      end

      def response_for_offer_findallpendingaffiliateapprovals(params)
        {"response" => {"status" => 1, "data" => {"14" => {"AffiliateOffer" => {"id" => "14", "offer_id" => "7", "affiliate_id" => "14", "approval_status" => "rejected"}, "Affiliate" => {"id" => "14", "source_brand_id" => "56", "company" => "Acme, Inc"}, "Offer" => {"id" => "7", "advertiser_id" => "0", "name" => "iPhone Test Offer"}}}, "errors" => []}}
      end

      def response_for_offer_findbyid(params)
        {"response" => { "status" => 1, "data" => {"1" => {"Offer" => {"id" => "1", "name" => "FindMeNow"}}}, "errors" => [] } }
      end

      def response_for_offer_generatetrackinglink(params)
        {"response" => {"status" => 1, "data" => {"affiliate_id" => "1", "offer_id" => 2, "click_url" => "http://my-network-id.go2jump.org/aff_c?offer_id=2&aff_id=1"}, "errors" => [] }}
      end

      def response_for_offer_generatetrackingpixel(params)
        {"response" => {"status" => 1, "data" => {"test_click_url" => "http://example.com/SHH", "code" => "<!-- Offer Conversion: Test -->\n<iframe src=\"http://example.com/SLG?amount=AMOUNT\" scrolling=\"no\" frameborder=\"0\" width=\"1\" height=\"1\"><\/iframe>\n<!-- \/\/ End Offer Conversion -->"}, "errors" => [] }}
      end

      def response_for_offer_getoverview(params)
        {"response" => {"status" => 1, "data" => {"active_offers" => 13, "pending_offers" => 9, "shared_offers" => 1, "pending_applications" => 1, "pending_offer_pixels" => 0, "pending_conversions" => 16}, "errors" => []}}
      end

      def response_for_offer_getthumbnail(params)
        {"response" => { "status" => 1, "data" => {"Thumbnail" => {"id" => "10", "offer_id" => "4444", "url" => "http://www.go2cdn.org/brand/files/my-network-id/1/my_thumbnail.gif" }}, "errors" => [] } }
      end


      def response_for_offer_update(params)
        {"response" => { "status" => 1, "data" => {"Offer" => {"id" => "20", "advertiser_id" => nil, "description" => nil, "require_approval" => "0", "offer_url" => "http://google.com"}}, "errors" => [] } }
      end

      def response_for_offer_updatefield(params)
        {"response" => { "status" => 1, "data" => {"Offer" => {"id" => "20", "advertiser_id" => nil, "description" => nil, "require_approval" => "0", "offer_url" => "http://google.com"}}, "errors" => [] } }
      end

      def response_for_offer_findallaffiliatesettings(params)
        {"response" => {"status" => 1, "data" => {"Offer" => {"id" => "9", "advertiser_id" => nil, "description" => nil, "require_approval" => "1"}}, "errors" => [] } }
      end

      def response_for_offer_setaffiliateapproval(params)
        {"response" => {"status" => 1, "data" => "14", "errors" => []}}
      end

      def response_for_offer_setpayout(params)
        {"response" => {"status" => 1, "data" => true, "errors" => []}}
      end

      # Affiliate Dummy Data
      def response_for_affiliate_create(params)
        {"response" => { "status" => 1, "data" => rand(1_000_000).to_s } }
      end

      def response_for_affiliate_update(params)
        {"response" => { "status" => 1, "data" => true, "errors" => [] } }
      end

      def response_for_affiliatebilling_createinvoice(params)
        {"response" => { "status" => 1, "data" => rand(1_000_000).to_s } }
      end

      def response_for_affiliatebilling_updateinvoice(params)
        {"response" => { "status" => 1, "data" => true, "errors" => [] } }
      end

      def response_for_advertiser_findall(params)
        {"response" => { "status" => 1, "data" => {"1" => {"Advertiser" => {"id" => "1", "company" => "Dominoes"}}}, "errors" => {} } }
      end

      def response_for_advertiser_create(params)
        {"response" => { "status" => 1, "data" => rand(1_000_000).to_s } }
      end

      def response_for_advertiser_update(params)
        {"response" => { "status" => 1, "data" => true, "errors" => [] } }
      end

      def response_for_conversion_create(params)
        {"response" => { "status" => 1, "data" => rand(1_000_000).to_s } }
      end

      def response_for_conversion_update(params)
        {"response" => { "status" => 1, "data" => true, "errors" => [] } }
      end

      def response_for_affiliatebilling_findinvoicestats(params)
        {"response" => { "status" => 1, "data" => {"start_date" => params["start_date"], "end_date" => params["end_date"], "data" => [{"Stat" => {"type" => "stats", "offer_id" => "1", "payout_type" => "cpa_flat", "currency" => "USD", "amount" => "26.00000", "impressions" => "0", "clicks" => "0", "conversions" => "5", "revenue" => "2.50", "sale_amount" => "50.00"}}] }}}
      end

      def response_for_affiliatebilling_findallinvoices(params)
        {"response" => { "status" => 1, "data" => {"1" => {"AffiliateInvoice" => {"id" => "1", "affiliate_id" => "2", "datetime" => "2009-06-02 20:14:05", "start_date" => "2009-06-01", "end_date" => "2009-06-02", "is_paid" => "1", "memo" => "asdf", "status" => "active", "notes" => "", "receipt_id" => nil, "currency" => "USD", "amount" => "12.00", "conversions" => "12" }}}, "errors" => []}}
      end

      def response_for_affiliatebilling_findallinvoicesbyids(params)
        {"response" => { "status" => 1, "data" => {"1" => {"AffiliateInvoice" => {"id" => "1", "affiliate_id" => "2", "datetime" => "2009-06-02 20:14:05", "start_date" => "2009-06-01", "end_date" => "2009-06-02", "is_paid" => "1", "memo" => "asdf", "status" => "active", "notes" => "", "receipt_id" => nil, "currency" => "USD", "amount" => "12.00", "conversions" => "12" }}}, "errors" => []}}
      end

      def response_for_report_getstats(params)
        {"response"=>{"data"=>{"pageCount"=>1, "data"=>[{"Stat"=>{"affiliate_id"=>"1", "clicks"=>"20645"}}], "current"=>50, "count"=>1, "page"=>1}, "errors"=>[], "status"=>1}}
      end

      def response_for_report_getconversions(params)
        {"response"=>{"data"=>{"pageCount"=>1, "data"=>[{"Stat"=>{"affiliate_id"=>"1", "payout"=>"100.00"}}], "current"=>50, "count"=>1, "page"=>1}, "errors"=>[], "status"=>1}}
      end

    end

    attr_accessor :code, :message, :body, :headers

    def initialize(code, message, body, headers)
      @code = code
      @message = message
      @body = body
      @headers = headers
    end

    def to_hash
      @headers
    end

  end
  
end