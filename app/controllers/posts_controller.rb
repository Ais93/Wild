class PostsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy, :new]
    
    def new
        @post = Post.new
    end
    
    def index
        if params[:category].blank?
            @posts = Post.all
        else
            @category_id = Category.find_by(name: params[:category]).id
            @posts = Post.where(category_id: @category_id)
        end
        if params[:search]
            @posts = Post.search(params[:search]).order("created_at DESC")
        else
            @posts = Post.all.order("created_at DESC")
        end
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
    
    def edit
        @post = Post.find(params[:id])
    end
      
    def update
        @post = Post.find(params[:id])
        if @post.update_attributes(post_params)
          flash[:success] = "Post updated"
          redirect_to @post
        else
          render 'edit'
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
