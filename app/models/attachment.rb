class Attachment < ApplicationRecord
	belongs_to :imageable, polymorphic: true
	mount_uploader :image, ImageUploader
	scope :cover, -> { where(cover: true).limit(1) }

	after_save :make_sure_cover_exist!

	def make_sure_cover_exist!
		unless self.imageable.attachments.cover.present?
			self.update(cover: true) # 如果第一次就上傳多張的話，就剛好設定最後一張是封面～
		end
	end
end
