class UserEventsController < ApplicationController
  def create
    @country = Country.find(params[:country_id])
    @event = Event.find(params[:event_id])
    @user_event = UserEvent.new(user_id: current_user.id, event_id: @event.id)
    if @user_event.valid?
      @user_event.save
      redirect_to country_path(@country)
    else
      redirect_to country_event_path(@country, @event)
    end 
  end
end
