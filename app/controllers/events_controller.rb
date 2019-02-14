class EventsController < ApplicationController
	before_action :set_event, only: [:show, :update, :destroy]

  def index
    @events = Event.all
  end

	def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.valid? && @event.save
      unless event_params[:honey].present?
		    redirect_to new_event_path, notice: "Your form has been sent. Thank you for reaching out."
	    end
    else
      render :new
    end

    # if @event.save
    #   redirect_to @post
    # else
    #   render 'new'
    # end
  end

  def update
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def show 
  end

  def destroy
    @event.destroy

    redirect_to events_path
  end

  private
	  def set_event
			@event = Event.find(params[:id])
	  end

    def event_params
      params.require(:event).permit(:type, :title, :date, :time, :location, :description, :price, :link, :image, :extras, :honey)
    end
end
