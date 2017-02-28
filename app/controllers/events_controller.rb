class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    # @event = Event.create!(event_params)
    # redirect_to events_path
    @event = current_user.events.create!(event_params)
    redirect_to event_path(@event)
  end

  def show
    @event = Event.find(params[:id])
    # @comment = Comment.find(params[:id])
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
    # @event = Event.find(params[:id])
    # @event.destroy
    # redirect_to events_path
    @event = Event.find(params[:id])
    if @event.user == current_user
      @event.destroy
    else
      flash[:alert] = "Only the author of this post can delete it"
    end
    redirect_to posts_path

  end

  private
  def event_params
    params.require(:event).permit(:title, :posted_by, :location, :level, :description)
  end


end
