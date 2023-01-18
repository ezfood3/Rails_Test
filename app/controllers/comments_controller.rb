class CommentsController < ApplicationController
  before_action :set_board

  def create
    comment = @board.comments.new(comments_params)
    comment.save

    redirect_to @board
  end

  private
  def set_board
    @board = Board.find(params[:board_id])
  end

  def comments_params
    params.require(:comments).permit(:content)
  end
end
