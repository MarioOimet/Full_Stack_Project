class NewEnquiriesController < ApplicationController

  # Index action to render all posts
  def index
    @myenquiry = current_business.session[:enquiry]
  end

  # New action for creating post
  def new
    @post = Enquiry.new
    redirect_to :action => :index, :controller => :home
  end

  # Create action saves the post into database
  def create
    @id = current_business[:id].to_i
    @post = Enquiry.new

      session[:enquiry].each do |contra|
        if contra.to_i == @id
          session[:enquiry].commit(post_params)
          flash[:notice] = "Successfully created post!"
        else
          flash[:alert] = "Error creating new post!"
          render :new
        end
      end

  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :created_at, :updated_at, :Business_id, :Category_id)
  end
end
