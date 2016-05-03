class CommentsController < ApplicationController
    before_filter :authenticate_user!, :only => [:new, :create]

  def create
    @article = Article.find(params[:article_id])
    comments = @article.comments.new(comment_params)

    comments.save
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:article_id])
    @comment = Comment.find(params[:id])

    end

  def update
    @article = Article.find(params[:article_id])
    @comment = Comment.find(params[:id])
    
    if @comment.update(comment_params)
      redirect_to article_path(@article)
    else
     render action: 'new'
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to article_path(@article)
  end


  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end

end
