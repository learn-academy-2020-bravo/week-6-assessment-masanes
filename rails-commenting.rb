# ASSESSMENT 6: Rails Commenting Challenge
# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# app/controller/blog_posts_controller.rb

# 1) rails g controller
class BlogPostsController < ApplicationController
  def index
    # 2)
    @posts = BlogPost.all
  end
# instance variable that contains all objects in BlogPost

  def show
    # 3)method that displays one id
    @post = BlogPost.find(params[:id])
  end

  # 4)method used to post a new obj
  def new
  end

  def create
    # 5)method used to post a new obj
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to @post
    else
      render action: :new
    end
  end

  def destroy
    @post = BlogPost.find(params[:id])
    if @post.delete
      redirect_to blog_posts_path
    else
      # 6)deletes post and redirects it to post
      redirect_to blog_post_path(@post)
    end
  end

  # 7)
  private
  def blog_post_params
    # 8)must be added to or will receive error
    params.require(:blog_post).permit(:title, :content)
  end

end


# app/models/blog_post.rb

# 9)a model
class BlogPost < ApplicationRecord
  # 10)relation ship so a blogpost can have many comments
  has_many :comments
end
