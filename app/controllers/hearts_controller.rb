class LikesController < ApplicationController
	before_action :authenticate_account!
before_action :set_post!, only: [:new, :vote]
	respond_to :js

def heart
  @account = current_account
  @post = Post.find(params[:post_id])
  @account.heart!(@post)
end

def unheart
  @account = current_account
  @heart = @account.hearts.find_by_post_id(params[:post_id])
  @post = Post.find(params[:post_id])
  @heart.destroy!
end
	
end