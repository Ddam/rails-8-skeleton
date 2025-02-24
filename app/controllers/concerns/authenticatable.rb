module Authenticatable
  extend ActiveSupport::Concern

  included do
    protected
      def authenticate!
        authenticate_user!
      end
  end
end
