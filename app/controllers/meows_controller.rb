class MeowsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    # Build a Meow by the current user for the post
    meow = current_user.meows.build(post: post)

    if meow.save
      redirect_to :back, notice: "We heard your Meow!"
    else
      redirect_to :back
    end
  end
end
