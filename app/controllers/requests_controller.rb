class RequestsController < ApplicationController
	before_action :set_request, only: [:show, :destroy]

  def index
    @requests = Request.all
  end

	def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)

    if @request.valid? && @request.save
      RequestMailer.new_request(@request).deliver unless request_params[:honey].present?
      redirect_to speaking_path, notice: "Your form has been sent. Thank you for reaching out."
    else
      render :new
    end
  end

  def show 
  end

  def destroy
    @request.destroy

    redirect_to root_path
  end

  private
	  def set_request
			@request = Request.find(params[:id])
	  end

    def request_params
      params.require(:request).permit(:name,:email,:phone,:comments,:event_name,:event_date,:event_location,:event_link,:event_message,:event_type,:honoriam,:honey)
    end
end