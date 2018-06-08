class LikesController < ApplicationController

  def create
    @like = Like.create(user_id: current_user.id, prototype_id: params[:prototype_id])
    @likes = Like.where(prototype_id: params[:prototype_id])
    redirect_to (:back), notice: 'いいね！しました'
    # redirect_to prototype_path(@like.prototype.id), notice: 'いいね！しました'
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, prototype_id: params[:prototype_id])
    like.destroy
    @likes = Like.where(prototype_id: params[:prototype_id])
    redirect_to (:back), notice: 'いいね！取消しました'
    # redirect_to prototype_path(prototype.prototype.id), notice: 'いいね！取消しました'
    # render 'prototypes/show'
  end

end
