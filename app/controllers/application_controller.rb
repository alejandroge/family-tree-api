class ApplicationController < ActionController::API

  def render_jsonapi_response(resource)
    render jsonapi: resource
  end

end
