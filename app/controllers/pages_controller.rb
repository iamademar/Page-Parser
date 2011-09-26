require 'open-uri'
class PagesController < ApplicationController
  def index
    FeedEntry.update_from_feed('http://feeds.feedburner.com/railstips/')
    @feeds = FeedEntry.all(:limit => 10, :order => "published_at desc")
  end
end
