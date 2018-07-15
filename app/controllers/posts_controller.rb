class PostsController < ApplicationController
    # Index html page
    def index
        @posts = Post.all.order('created_at DESC')
    end
    # New file html
    def new
        @post = Post.new
    end

    # WhenEver the New Post Is created
    def create
    @post = Post.new(post_params)
        if @post.save
            redirect_to @post 
        else
            render 'new'
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    private
    def post_params
        params.require(:post).permit(:title, :body)
    end

end
