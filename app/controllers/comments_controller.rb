class CommentsController < ApplicationController

  def new
    @event = Event.find(params[:event_id])
    @comment = Comment.new
  end

  def create
    @event = Event.find(params[:event_id])
    @comment = @event.comments.create(comment_params)

    redirect_to event_path(@event)
  end

  def edit
    @event = Event.find(params[:event_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @event = Event.find(params[:event_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:event_id])
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to event_path(@event)
  end


  private
  def comment_params
    params.require(:comment).permit(:comment_by, :content).merge(user: current_user)
  end
end
