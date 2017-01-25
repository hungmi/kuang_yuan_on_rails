class Admin::AdsController < AdminController
	def toggle
		@model_const = params[:model].capitalize.constantize
		@record = @model_const.find(params[:id])
		if @record.present? && @record.respond_to?("ad_on!")
			@record.ad_off? ? @record.ad_on! : @record.ad_off!
			flash[:success] = "#{@record.full_name} 設定成功！"
			if @model_const.ad_on.size < 6
				flash[:warning] = "請至少設定 6 個，以避免首頁重複顯示。"
			end
		end
		redirect_to :back
	end
end