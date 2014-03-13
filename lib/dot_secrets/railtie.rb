module DotSecrets
  class Railtie < ::Rails::Railtie
    initializer 'dot_secrets' do |app|
      ActiveSupport.on_load(:before_initialize) do
        ::ActiveSupport::OrderedOptions.send :include, DotSecrets::OrderedOptions
        ::Rails::Application.send :prepend, DotSecrets::Application
      end
    end
  end
end
