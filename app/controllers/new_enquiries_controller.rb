class NewEnquiriesController < ApplicationController
  before_action :initialize_session
    # Index action to render all posts
    def index
      @post = Enquiry.session[:enquiry]
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
        if session[:enquiry].any? { |value| value == @id }
          session[:enquiry] << @id
          session[:enquiry].save(post_params)
          flash[:notice] = "Successfully created post!"
          redirect_to new_enquiries_path(@post)
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
