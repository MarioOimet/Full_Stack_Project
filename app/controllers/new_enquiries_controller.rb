class NewEnquiriesController < ApplicationController
  before_action :initialize_session
    # Index action to render all posts
    def index
      @post = Enquiry.all
    end

    # New action for creating post
    def new
      @post = Enquiry.new
      redirect_to enquiry_path
    end

    # Create action saves the post into database
    def create
      @post = Enquiry.new
      @post.save(post_params)
          flash[:notice] = "Successfully created post!"
          redirect_to new_enquiries_path(@post)
    end

    private
    def initialize_session
      session[:enquiry] ||= []
    end

    def post_params
      params.permit(:title, :content, :created_at, :updated_at, :Business_id, :Category_id).merge(Business_id: current_business.id)
    end
  end
