class Post < ApplicationRecord
	default_scope { order created_at: :desc } 
	 mount_uploader :image, ImageUploader
	belongs_to :account
	acts_as_votable
    has_many :comments
	before_create :set_active
	scope :active, -> { where active: true }
	
	
	
	def upvote
	
	end
	
	private
	
	def set_active
		self.active  = true
	end
end
