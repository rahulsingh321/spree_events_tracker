module Spree
  module TaxonsControllerDecorator
    include Spree::PageTracker

    def self.prepended(base)
      track_actions [:show], base
    end
  end
end
::Spree::TaxonsController.prepend Spree::TaxonsControllerDecorator
