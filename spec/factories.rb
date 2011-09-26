Factory.define :post do |f|
  f.sequence(:name) { |n| "Post name #{n}"}
  f.sequence(:summary) { |n| "Summary #{n}"}
  f.sequence(:url) { |n| "http://blog/feed/#{n}"}
  f.published_at (rand(10) + 1).days.from_now
  f.sequence(:guid) { |n| "sample#{n}" }
  f.sequence(:author) { |n| "super author #{n}" }
end
