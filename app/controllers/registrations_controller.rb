# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  rescue_from ActiveRecord::RecordNotUnique, with: :not_unique

  def create
    build_resource(sign_up_params)
    resource.save
    sign_up(resource_name, resource) if resource.persisted?

    render_jsonapi_response(resource)
  end
  
private
  def not_unique
    render json: {
      'errors': [
        {
          'status': '400',
          'title': 'User already exists'
        }
      ]
    }, status: 400
  end

end