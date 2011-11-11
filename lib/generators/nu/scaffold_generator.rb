module Nu
  module Generators
    class ScaffoldGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)
      
      hook_for :orm, :as => :model
      
      def create_controller_file
        template 'controller.rb', "app/controllers/#{plural_name}_controller.rb"
      end
    end
  end
end
