class ContractController < ApplicationController
  before_action :initialize_session
    # Index action to render all posts
    def index
      @post = Contract.all
    end

    # New action for creating post
    def new
      @post = Contract.new
      # form_for(:post, :url => new_enquiries_path)
      # redirect_to enquiry_path
    end

    # Create action saves the post into database
    def create
      @post = Contract.new(post_params)
      if @post.save
        flash[:notice] = "Successfully saved to DB!"
        redirect_to :action => :index, :controller => :home
      else
        flash[:alert] = "Error saving to DB!"
        render :create
      end
    end

    private
    def initialize_session
      session[:contract] ||= []
    end

    def post_params
      params.require(:post).permit(:description, :created_at, :updated_at, :Student_id, :Rating_id).merge(Student_id: current_business.id)
    end
end
