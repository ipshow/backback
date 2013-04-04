class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    comment_attr = params[:comment].merge :user_id => current_user.id    # 将current_user附加到comment,使comment创建后有user_id
    @comment = @post.comments.create(comment_attr)
    redirect_to post_path(@post)
  end

end
