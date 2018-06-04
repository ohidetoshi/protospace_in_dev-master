class CommentsController < ApplicationController

  def create
    @comment = Comment.new(content: comment_params[:content], prototype_id: comment_params[:prototype_id], user_id: current_user.id)
    redirect_to prototype_path(@prototype)
  end

  def update
  end

  def destroy
  end

  private
  def comment_params
    params.permit(:content, :prototype_id, :user_id)
  end

end
