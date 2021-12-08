class CommenttsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@commentt = @post.commentts.create(params.require(:commentt).permit(:commenter, :body).merge(user_id: current_user.id))
		redirect_to post_path(@post)
	end
	def destroy
		@post = Post.find(params[:post_id])
		@commentt = @post.commentts.create(params.require(:commentt).permit(:commenter, :body).merge(user_id: current_user.id))
		@commentt.destroy
		redirect_to post_path(@post)
	end
end