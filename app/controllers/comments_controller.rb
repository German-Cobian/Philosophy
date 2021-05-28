class CommentsController < ApplicationController

  def index
    @comments = Comment.all.order('created_at DESC')
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    if @comment.save
      redirect_to article_path(params[:article_id])
      flash[:notice] = 'Comment was successfully created.'
    else
      redirect_to article_path(params[:article_id]), alert: @comment.errors.full_messages.join('. ').to_s
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :article_id)
  end
end
