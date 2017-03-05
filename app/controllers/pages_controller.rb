class PagesController < ApplicationController
  def home
  	@tabs_title = TabsTitle.first
  	@tabs = Tab.all.order(:priority).limit(5)
  	ad_stone_ids = Stone.ad_on.order("RANDOM()").limit(6).pluck(:id)
  	@top_ad_stones = Stone.find(ad_stone_ids.first(3))
  	@bottom_ad_stones = Stone.find(ad_stone_ids.last(3))
  	@ad_examples = Example.ad_on.order("RANDOM()").limit(5)
  end
end
