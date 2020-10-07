class EventCommentsController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @event_comment = event_comment.new
  end

  def create
    @event = Event.find(params[:event_id])
    @event_comment = Event_comment.new(event_comment_params)
    if @event_comment.valid?
      @event_comment.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  private

  def event_comment_params
    params.require(:event_comment).permit(:content).merge(user_id: current_user.id, event_id: params[:event_id])
  end
end
