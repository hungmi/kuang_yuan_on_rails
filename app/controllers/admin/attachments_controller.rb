class Admin::AttachmentsController < AdminController
	def set_cover
		@attachment = Attachment.find(params[:id])
		@attachment.imageable.attachments.update_all(cover: false)
		if @attachment.update(cover: true)
			flash[:success] = "設定成功。"
		end
		redirect_to :back
	end

	def destroy
		@attachment = Attachment.find(params[:id])
		if !@attachment.cover?
			@attachment.destroy
			flash[:success] = "該圖片已刪除。"
		elsif @attachment.cover?
			flash[:danger] = "無法刪除封面圖，請先設定為其他圖片。"
		else
		 	flash[:danger] = "刪除失敗。"
		end
		redirect_to :back
	end
end