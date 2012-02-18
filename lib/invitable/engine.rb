module Invitable
  class Engine < ::Rails::Engine
    isolate_namespace Invitable

    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
    end

    def self.app_path
      File.expand_path('../../app', called_from)
    end

    class << self
      %w{controller helper mailer model}.each do |resource|
        define_method "#{resource}_path" do |name|
          File.expand_path("#{resource.pluralize}/invitable/#{name}", app_path)
        end
      end
    end

  end
end
