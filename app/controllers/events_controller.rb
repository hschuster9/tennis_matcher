class EventsController < ApplicationController

  def index
    @events = Event.all
    if params[:search]
      @events = Event.search(params[:search]).order("created_at DESC")
    else
      @events = Event.all.order("created_at DESC")
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.create!(event_params)
    redirect_to event_path(@event)
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to event_path
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.user == current_user
      @event.destroy
    else
      flash[:alert] = "Only the author of this post can delete it"
    end
    redirect_to events_path
  end

  private
  def event_params
    params.require(:event).permit(:title, :posted_by, :location, :level, :description)
  end

end
