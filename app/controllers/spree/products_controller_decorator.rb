module Spree
  module ProductsControllerDecorator
    include Spree::PageTracker

    def self.prepended(base)
      track_actions [:show, :index], base
    end
  end
end

::Spree::ProductsController.prepend Spree::ProductsControllerDecorator
