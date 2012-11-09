module Nu
  module Generators
    class ScaffoldGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates/scaffold', __FILE__)
      
      argument :attributes, :type => :array, :default => [], :banner => "field:type field:type"
      
      hook_for :orm, :as => :model
      
      def create_controller_file
        template 'controller.rb', "app/controllers/#{plural_name}_controller.rb"
      end
      
      def create_views_files
        views = %w(all edit show new _form)
        
        views.each do |view|
          template "views/#{view}.html.erb", "app/views/#{plural_name}/#{view}.html.erb"
        end
      end

      def create_routes
        route "resources :#{plural_name} do; get :all, on: :collection; end"
      end
    end
  end
end