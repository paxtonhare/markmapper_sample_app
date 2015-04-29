class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @article.comments << Comment.new(comment_params)
    @article.save
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @article.comments.reject! { |c| c.id.to_s == params[:id] }
    @article.save

    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
