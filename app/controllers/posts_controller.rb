class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => {:title => @post.name,
                                      :body  => @post.content,
                                      :author => @post.author }}
    end
  end
end
