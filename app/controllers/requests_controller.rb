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
      redirect_to speaking_path, notice: "Your request has been sent! We’ll be in touch soon."
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
      params.require(:request).permit(:name,:email,:phone, :org_name, :event_time, :audience, :aud_size, :comments,:event_name,:event_date,:event_location,:event_link,:event_message,:event_type,:honoriam,:honey)
    end
end