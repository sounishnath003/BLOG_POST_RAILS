class PostsController < ApplicationController
    # Index html page
    def index
        @posts = Post.all.order('created_at DESC')
    end
    # New file html
    def new
    end

    # WhenEver the New Post Is created
    def create
    @post = Post.new(post_params)
    @post.save

    redirect_to @post 
    end

    def show
        @post = Post.find(params[:id])
    end

    private
    def post_params
        params.require(:post).permit(:title, :body)
    end

end
