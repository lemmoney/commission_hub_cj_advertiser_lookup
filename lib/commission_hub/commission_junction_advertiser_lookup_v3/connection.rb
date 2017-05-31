module CommissionHub
  module CommissionJunctionAdvertiserLookupV3
    class Connection < CommissionHub::Connection

      def_endpoint :link_search,        'link-search',      class: :Base
      def_endpoint :advertiser_lookup,  'advertiser_lookup', class: :Base

      def initialize(settings)
        @settings = settings
      end

    end
  end
end

