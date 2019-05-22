class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    binding.pry
    puts "done"
    redirect_to comment
  end

  # def show
  #   @comment = Comment.find)params[:id]
  #
  # end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
