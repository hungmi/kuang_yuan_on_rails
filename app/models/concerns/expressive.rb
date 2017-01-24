module Expressive
	extend ActiveSupport::Concern
	def full_name
		if en_name.present?
			return "#{zh_name} #{en_name}"
		else
			return zh_name
		end
	end
end