class VotesController < ApplicationController
  def create
    @vote = Vote.new(user_id: session[:user_id], article_id: params[:article_id])
    if Vote.exists?(article_id: @vote.article_id, user_id: @vote.user_id)
      flash.now[:alert] = 'Can not upvote this article'
      redirect_to article_path(params[:article_id])
    else
      @vote.save
      redirect_to article_path(params[:article_id]), notice: 'Upvoted'
    end
  end

  def destroy
    @vote = Vote.find_by(user_id: session[:user_id], article_id: params[:article_id])
    @vote.destroy
    redirect_to article_path, notice: 'Downvoted'
  end

  private

  def vote_params
    params.permit(:article_id)
  end
end
