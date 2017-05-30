class CommentsController < ApplicationController
	def create

    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.create(comment_params)
    redirect_to movie_path(@movie)
  end
  
  def comment_params
    params.require(:comment).permit(:commenter, :body, :movie_id, :created_at, :updated_at)
  end 
  

  
  def destroy
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.find(params[:id])
    @comment.destroy
    redirect_to movie_path(@movie)
  end


end
