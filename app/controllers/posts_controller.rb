class PostsController < ApplicationController
	before_action :authenticate_account!, only: [:new, :vote]
 	 before_action :set_post, only: [:show, :vote]
	respond_to :js, :html, :json
	
	def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
	@post.account_id = current_account.id if account_signed_in?
    @post.save
    redirect_to feed_path, flash: { success: "Post was creeated successfully!" }
 
	  
  end


	
	def show
		@posts
	@comment = Comment.new
	end
	
def upvote
    @post = Post.find(params[:id])
    @post.liked_by current_account
    #can change current_user to any other voter
end

def downvote
    @post = Post.find(params[:id])
    @post.disliked_by current_account
    #can change current_user to any other voter
end


	 
	private
	
	def set_post
		@post = Post.find(params[:id]) if params[:id].present?
	end
	def post_params
	params.require(:post).permit(:description, :image, :image_cache)
	end
end