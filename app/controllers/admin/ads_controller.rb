class Admin::AdsController < AdminController
	def toggle
		@model_const = params[:model].capitalize.constantize
		@record = @model_const.find(params[:id])
		if @record.present? && @record.respond_to?("ad_on!")
			@record.ad_off? ? @record.ad_on! : @record.ad_off!
			flash[:success] = "#{@record.full_name} 已設為首頁精選！"
			if @record.ad_on? && !@record.attachments.cover.present?
				flash[:danger] = "請記得設定 #{@record.full_name} 封面圖，避免首頁無圖片顯示。"
			end
		end
		redirect_to :back
	end
end