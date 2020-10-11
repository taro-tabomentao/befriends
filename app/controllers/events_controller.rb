class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.valid?
      @event.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
    @user_events = UserEvent.where(event_id: params[:id]).includes(:user)
    @event_comments = EventComment.where(event_id: params[:id]).includes(:user)
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      redirect_to user_path(current_user)
    else
      render :show
    end
  end

  def search
    @events = Event.search(params[:keyword])
  end

  private

  def event_params
    params.require(:event).permit(:title, :country_id, :category_id, :start_time, :end_time, :online, :place, :content, :image, user_ids: [])
  end
end
