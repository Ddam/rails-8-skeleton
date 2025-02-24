module Translatable
  extend ActiveSupport::Concern

  included do
    def translate_url_options
      { locale: I18n.locale }
    end

    # Switches the locale for the duration of the given action.
    #
    # @param action [Proc] the action to be executed within the specified locale context.
    # @yield the block of code to be executed with the switched locale.
    def switch_locale(&action)
      locale = params[:locale] || I18n.default_locale

      I18n.with_locale(locale, &action)
    end
  end
end
