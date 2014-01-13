module DotSecrets
  module Application
    @@loaded_dot_secrets = false

    def secrets
      super

      unless @@loaded_dot_secrets
        @secrets.deep_transform_values!
        @@loaded_dot_secrets = true
      end

      @secrets
    end
  end
end
