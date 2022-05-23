module Spree
  module HomeControllerDecorator
    include Spree::PageTracker

    def self.prepended(base)
      track_actions [:index],base
    end
  end
end

::Spree::HomeController.prepend Spree::HomeControllerDecorator
