require 'open-uri'
class PagesController < ApplicationController
  def index
    Post.update_from_feed('http://feeds.feedburner.com/railstips/')
    @feeds = Post.all(:limit => 10, :order => "published_at desc")
  end
end
