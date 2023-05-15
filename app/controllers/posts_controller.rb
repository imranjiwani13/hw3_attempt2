class PostsController < ApplicationController
  # Controller actions go here
  class PostsController < ApplicationController
    before_action :set_place
  
    def new
      @post = @place.posts.new
    end
  
    def create
      @post = @place.posts.new(post_params)
  
      if @post.save
        redirect_to @place
      else
        render :new
      end
    end
  
    private
  
    def set_place
      @place = Place.find(params[:place_id])
    end
  
    def post_params
      params.require(:post).permit(:title, :description, :date)
    end
  end
  
end

