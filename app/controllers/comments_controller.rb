class CommentsController < ApplicationController
  def create
    Comment.create(body: params[:body], meme_id: params[:meme_id], user_id: current_user.id)
    redirect_to :controller => 'memes', :action => 'show', :id => params[:meme_id]
  end
end