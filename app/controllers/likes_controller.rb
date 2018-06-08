class LikesController < ApplicationController

  def create
    # @prototype = Prototype.find(params[:prototype_id])
    @like = Like.create(user_id: current_user.id, prototype_id: params[:prototype_id])
    @likes = Like.where(prototype_id: params[:prototype_id])
    redirect_to (:back), notice: 'いいね！しました'
    # redirect_to prototype_path(@like.prototype.id), notice: 'いいね！しました'

  def destroy
    # @prototype = Prototype.find(params[:prototype_id])
    like = Like.find_by(user_id: current_user.id, prototype_id: params[:prototype_id])
    like.destroy
    @likes = Like.where(prototype_id: params[:prototype_id])
    redirect_to (:back), notice: 'いいね！取消しました'
    # redirect_to prototype_path(prototype.prototype.id), notice: 'いいね！取消しました'
    # render 'prototypes/show'
  end

end
