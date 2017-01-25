class UserMailer < ApplicationMailer
	def inquire_mail(name, contact, availability, content)
		@name = name
		@contact = contact
		@availability = availability
		@content = content
		# mail(to: "kuangyuanstone@gmail.com", subject: '網站諮詢')
		mail(to: "hungmihungmi@gmail.com", subject: '網站諮詢')
	end
end
