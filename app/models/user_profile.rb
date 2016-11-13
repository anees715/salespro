class UserProfile < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	
	has_one :business_category
	belongs_to :user
	validates_presence_of :first_name, :last_name, :business_name, :business_category_id, :phone_number, :office_number, :address
end
