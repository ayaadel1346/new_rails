class PostsController < ApplicationController

    def index 
      @posts = Post.all
    end 
  
    def new 
      @post = Post.new
    end
  
    def show 
      #puts "++++++ #{params}"
      @post = Post.find(params[:id])
    end 
  
    def create 
      @post = Post.new({ title: params[:post][:title], content: params[:post][:content] })
  
      if @post.save 
        redirect_to post_url(@post), notice: "Created"
      else
        render :new, notice: "Not Created", status: 422
      end
    end
  
    def edit 
      @post = Post.find(params[:id])
    end
  
    def update 
      @post = Post.find(params[:id])
  
      if @post.update({ title: params[:post][:title], content: params[:post][:content] })
        redirect_to post_url(@post), notice: "Updated"
      else
        render :edit, notice: "Not updated", status: 422
      end
    end
  
    def destroy 
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to post_url
    end 
  
  end
  