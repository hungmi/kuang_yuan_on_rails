class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :trackable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	def send_devise_notification(notification, *args)
	  devise_mailer.send(notification, self, *args).deliver_later
	end
end
