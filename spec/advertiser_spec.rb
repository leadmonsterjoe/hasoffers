require 'spec_helper'

describe HasOffers::Advertiser do
  describe "class methods" do
    subject { HasOffers::Advertiser }

    its(:find_all) { should be_successful }

    describe ".create" do
      let(:params) do
        { 'company' => 'Dominoes',
          'address1' => '100 1st St.',
          'city' => 'Minneapolis', 
          'country' => 'USA',
          'zipcode' => '55413',
          'phone' => '123-123-1234' }
      end

      it "is successful" do
        HasOffers::Advertiser.create(params).should be_successful
      end
    end

    describe ".update" do
      it "is successful" do
        HasOffers::Advertiser.update(1, 'company' => "Dominoes Pizza").
          should be_successful
      end
    end
  end
end

