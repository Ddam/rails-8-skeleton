# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  layout :resolve_layout

  before_action :configure_sign_up_params, only: [ :create ]
  before_action :configure_account_update_params, only: [ :update ]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    super
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # GET /resource
  def delete
    render :delete
  end

  # DELETE /resource
  def destroy
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :name ])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [ :name ])
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    super(resource)
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end

  # The path used after update.
  def after_update_path_for(resource)
    edit_user_registration_path
  end

  # Updates the resource with the given parameters.
  # If both password and password confirmation are blank, it updates the resource without requiring the current password.
  # Otherwise, it updates the resource with the current password.
  def update_resource(resource, params)
    if !params[:name].blank? || !params[:email].blank?
      resource.update_without_password(params)
    else
      resource.update_with_password(params)
    end
  end

  private

  # Determines the layout to be used based on the action name.
  #
  # @return [String] the name of the layout to be used.
  #   - "guest" for "new" and "create" actions.
  #   - "application" for all other actions.
  def resolve_layout
    return "turbo_rails/frame" if turbo_frame_request?

    case action_name
    when "new", "create"
      "guest"
    else
      "application"
    end
  end
end
