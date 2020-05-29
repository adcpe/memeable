class VotesController < ApplicationController
  def create
    Vote.create(meme_id: params[:meme_id], user_id: current_user.id)
    redirect_to :controller => 'memes', :action => 'show', :id => params[:meme_id]
  end

  def unvote
    Vote.find_by(meme_id: params[:meme_id], user_id: current_user.id).destroy
    redirect_to :controller => 'memes', :action => 'show', :id => params[:meme_id]
  end
end
