class NewEnquiriesController < ApplicationController
  before_action :initialize_session
    # Index action to render all posts
    def index
      @post = Enquiry.includes(:business, :category).all
    end

    # New action for creating post
    def new
      @post = Enquiry.new
      # form_for(:post, :url => new_enquiries_path)
      # redirect_to enquiry_path
    end

    # Create action saves the post into database
    def create
      @post = Enquiry.new(post_params)
      if @post.save
        flash[:notice] = "Successfully created post!"
        redirect_to :action => :index, :controller => :home
      else
        flash[:alert] = "Error creating new post!"
        render :new
      end
    end

    private
    def initialize_session
      session[:enquiry] ||= []
    end

    def post_params
      params.require(:post).permit(:title, :content, :created_at, :updated_at, :Business_id, :Category_id).merge(Business_id: current_business.id)
    end
  end
