class EventsController < ApplicationController
  before_action :set_event, only: [:edit, :show, :update, :destroy, :delete_image_attachment]

  def index
    @events = Event.all
  end

  def delete_image_attachment
    @event.image.purge
    redirect_back(fallback_location: request.referer)
  end

	def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
	    redirect_to events_path, notice: "Your event has been created."
    else
      render :new
    end
  end

  def update
    if @event.update(event_params)
      redirect_to events_path
    else
      render 'edit'
    end
  end

  def show 
  end

  def edit
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
      params.require(:event).permit(:event_type, :title, :date, :time, :location, :description, :price, :link, :image, :extras, :honey)
    end
end
