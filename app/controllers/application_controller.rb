class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    params.require(:user).permit(:nickname,:gender_id, :country_id, :city, :birthday, :language, :image)
  end
end
