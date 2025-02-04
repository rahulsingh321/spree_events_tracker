module Spree
  module PageTracker
    extend ActiveSupport::Concern

    def self.included(base)
      def base.track_actions(actions = [], base)
        base.after_action :track_event, only: actions
      end
    end

    def track_event
      if event_trackable?
        Spree::Page::Event::Tracker.new(
          session_id: session.id,
          referrer: request.referrer,
          actor: current_spree_user,
          target: instance_variable_get("@#{ controller_name.singularize }"),
          activity: get_activity,
          search_keywords: get_keywords,
          query_string: request.query_string
        ).track
      end
    end

    def get_activity
      if index_action?
        if @searcher && (@searcher.keywords || @searcher.search)
          Spree::Page::Event::Tracker::EVENTS[:search]
        else
          Spree::Page::Event::Tracker::EVENTS[:index]
        end
      elsif show_action?
        if @searcher && @searcher.search
          Spree::Page::Event::Tracker::EVENTS[:filter]
        else
          Spree::Page::Event::Tracker::EVENTS[:show]
        end
      end
    end

    def get_keywords
      @searcher && (@searcher.search.to_s + @searcher.keywords.to_s)
    end

    def event_trackable?
      show_action? || index_action?
    end

    %w(index show).each do |_action_|
      define_method("#{ _action_ }_action?") do
        action_name == _action_
      end
    end
  end
end
