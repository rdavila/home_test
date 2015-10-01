class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def accept_only_json
    unless request.format.json?
      render :text => "This endpoint is only accessible through JSON", :status => :not_acceptable
      return false
    end
  end

end
