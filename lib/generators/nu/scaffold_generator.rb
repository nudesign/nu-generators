module Nu
  module Generators
    class ScaffoldGenerator < Rails::Generators::NamedBase
      hook_for :orm, :as => :model
    end
  end
end
