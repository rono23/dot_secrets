module DotSecrets
  module OrderedOptions
    def deep_transform_values
      result = ActiveSupport::OrderedOptions.new
      each do |key, value|
        result[key] = value.is_a?(Hash) ? ActiveSupport::OrderedOptions[value].deep_transform_values : value
      end
      result
    end

    def deep_transform_values!
      keys.each do |key|
        value = delete(key)
        self[key] = value.is_a?(Hash) ? ActiveSupport::OrderedOptions[value].deep_transform_values! : value
      end
      self
    end
  end
end
