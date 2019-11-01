class CommentsController < ApplicationController
	before_action :authenticate_account!, only: [:new, :vote,]
  def create
    @comment = Comment.new(comment_params)
	@comment.account_id = current_account.id if account_signed_in?
    @comment.save
	  return_url = params[:comment][:return_to].present? ? post_path(@comment.post_id) : feed_path
      redirect_to return_url, flash: { success: "Post was creeated successfully!" }
 
	  
  end

	private
	
	def comment_params
	params.require(:comment).permit(:comment, :post_id, :return_to)
	end
end