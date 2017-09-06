class CommentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @animal = Animal.find(params[:animal_id])
    @comment = @animal.comments.create(comment_params)
    redirect_to animal_path(@animal)
  end

  def destroy
    @animal = Animal.find(params[:animal_id])
    @comment = @animal.comments.find(params[:id])
    @comment.destroy
    redirect_to animal_path(@animal)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
