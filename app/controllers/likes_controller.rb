class LikesController < ApplicationController

  def create
    protoype_liked = Prototype.find(params[:id])
    prototype.likes.create(user_id: params[:user_id])
    redirect_to controller: "prototypes", action: "show"
  end

  def destroy
    prtototype_unliked = Like.find(prototype.id: params[:id])
    prtototype_unliked.delete
  end

