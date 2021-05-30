class CommentsController < ApplicationController
  def create
    @user = User.find(session[:current_user_id])
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params.merge(commenter: @user.username, article_id: params[:article_id], user_id: session[:current_user_id]))
    redirect_to article_path(@article)
  end

  def destroy
    @user = User.find(session[:current_user_id])
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end 

  def upvote
    user_id = User.find(session[:current_user_id]).id
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.upvoter(user_id)

    redirect_to article_path(@article)
  end

  def downvote
    user_id = User.find(session[:current_user_id]).id
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.downvoter(user_id)

    redirect_to article_path(@article)
  end




  private
  def comment_params
    params.require(:comment).permit(:body, :rating)
  end
end
