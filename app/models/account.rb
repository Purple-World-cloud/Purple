class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	
	mount_uploader :image, ImageUploader

	has_many :posts
	acts_as_messageable
	acts_as_voter
	
	def full_name
		"#{first_name} #{last_name}"
	end
	
	def set_resource!
		
	end
	
	 def mailboxer_name
    self.username
  end

  def mailboxer_email(object)
    self.username
  end
	
	def total_followers
		Follower.where(follower_id: self.id).count
	end
	
	def total_following
		Follower.where(following_id: self.id).count
	end
end
