require 'test_helper'

class DotSecretsTest < ActiveSupport::TestCase
  test "custom secrets saved in test/dummy/config/secrets.yml are loaded in app secrets" do
    assert_equal 'bar', Rails.application.secrets.foo
    assert_equal 'mytokentest', Rails.application.secrets.app.token
    assert_equal 'mysecretkeysapikey', Rails.application.secrets.app.secret_keys.api_key
  end
end
