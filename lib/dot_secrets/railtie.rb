module DotSecrets
  class Railtie < ::Rails::Railtie
    initializer 'dot_secrets' do |app|
      ActiveSupport.on_load(:after_initialize) do
        ::ActiveSupport::OrderedOptions.send :include, DotSecrets::OrderedOptions
        ::Rails::Application.send :prepend, DotSecrets::Application
      end
    end
  end
end
