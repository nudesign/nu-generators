module Nu
  module Generators
    class DeviseViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates/devise_views', __FILE__)

      def copy_views
        directory "mailer", "app/views/devise/mailer"
        directory "passwords", "app/views/devise/passwords"
        directory "sessions", "app/views/devise/sessions"
        directory "shared", "app/views/devise/shared"
      end
    end
  end
end