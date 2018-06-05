class LikesController < ApplicationController

  def create
    @like = like.create(user_id: current_user.id, prototype_id: params[:params_id])
    @likes = Like.where(prototepe_id: params[:prtotype_id])

  end

  def destroy
    like = Like.find_by(user_id: current_user.id, prototype_id: params[:prtotype_id])
    like.destroy
    @likes = Like.where(protoypr_id: parmas[:prototype_id])
  end

