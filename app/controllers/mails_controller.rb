class MailsController < ActionController::Base
	def inquire
		UserMailer.inquire_mail(
			params[:name],
			params[:contact],
			params[:availability],
			params[:content]
		).deliver_later
		redirect_to root_path
	end
end