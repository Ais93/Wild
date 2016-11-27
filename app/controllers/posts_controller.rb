class PostsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy, :new]
    
    def new
        @post = Post.new
    end
    
    def index
        @posts = Post.all
    end
    
    def show
       @post = Post.find(params[:id])
    end
    
    def create
        @post = current_user.posts.build(post_params)
        if @post.save
          flash[:success] = "Post Created!"
          redirect_to @post
        else
          render "new"
        end
    end
    
    def destroy
        Post.find(params[:id]).destroy
        flash[:success] = "Micropost deleted"
        redirect_to request.referrer || root_url
    end
    
    private

    def post_params
      params.require(:post).permit(:name, :description, :other, :category_id, :location_id)
    end
end
