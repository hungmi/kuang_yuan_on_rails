class PagesController < ApplicationController
  def home
  	ad_stone_ids = Stone.ad_on.order("RANDOM()").limit(6).pluck(:id)
  	@top_ad_stones = Stone.find(ad_stone_ids.first(3))
  	@bottom_ad_stones = Stone.find(ad_stone_ids.last(3))
  	@examples = Example.ad_on.limit(4)
  end
end
