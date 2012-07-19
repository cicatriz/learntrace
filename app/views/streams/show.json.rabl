child @stream => :timeline do 
  attribute :name => :headline
  node(:type) { "default" }
  node(:startDate) { "2012,7,1" }
  node(:text) { "Testing stream" }
  node(:asset) do
    { :media => "", :credit => "", :caption => "test caption!" }
  end 

  child :pins => :date  do
    node(:text) do |p|
      p.item.description
    end
    node(:headline) do |p|
      p.item.name
    end
    node(:startDate) do |p|
      p.fake_scheduled_at
    end
    node(:asset) do |p|
      { :media => p.item.url, :thumbnail => p.item.thumb_url, :caption => "yep" }
    end
  end
end
