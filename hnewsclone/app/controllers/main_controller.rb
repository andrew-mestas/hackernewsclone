class MainController < ApplicationController
	  before_action :is_authenticated?

  def index
  	@posts = Post.all
  end

  def add
  end

  def create
	@current_user.post.create title: post_params["title"], link: post_params["link"]
	redirect_to root_path
  end
  
  private
	  def post_params
	  	params.require(:post).permit(:title, :link)
	  end
end

