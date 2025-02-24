class ApplicationController < ActionController::Base
  include Authenticatable
  include Translatable

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :authenticate!
  around_action :switch_locale

  def default_url_options
    translate_url_options
  end
end
