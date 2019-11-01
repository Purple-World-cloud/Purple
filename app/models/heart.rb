class Heart < ActiveRecord::Base
 validates :account_id, uniqueness: { scope: :post_id }
	belongs_to :post

  belongs_to :account

end