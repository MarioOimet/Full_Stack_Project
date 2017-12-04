class NewEnquiriesController < ApplicationController
  before_action :initialize_session
  # Index action to render all posts
  def index
    @myenquiry = session[:enquiry]
  end

  # New action for creating post
  def new
    @post = Enquiry.new
    redirect_to :action => :index, :controller => :home
  end

  # Create action saves the post into database
  def create
    @id = current_business[:Enquiry_id].to_i
    @post = Enquiry.new

    if session[:enquiry].any? { |value| value == @id }
      session[:enquiry].each do |contra|
        if contra.to_i == @id
          if session[:enquiry].save(post_params)
            flash[:notice] = "Successfully created post!"
            redirect_to post_path(@post)
          else
            flash[:alert] = "Error creating new post!"
            render :new
          end
        end
      end
    end
  end

  private
  def initialize_session
    session[:enquiry] ||= []
  end

  def post_params
    params.require(:post).permit(:title, :content, :Category_id)
  end
end
