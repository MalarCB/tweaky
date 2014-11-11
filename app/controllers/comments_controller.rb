class CommentsController < ApplicationController
  def create
    @produit = Produit.find(params[:produit_id])
    begin
      @comment = @produit.comments.create(comment_params)
      redirect_to detail_path(@produit.id), notice: 'successfully created'
    rescue => ex
      p ex
    end

  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :email, :website)
  end
end
