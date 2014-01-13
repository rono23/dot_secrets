require 'test_helper'

class OrderedOptionsTest < ActiveSupport::TestCase
  def test_deep_transform_values
    hash = { b: { c: 3 } }
    a = ActiveSupport::OrderedOptions[hash].deep_transform_values

    assert_equal 3, a.b.c
  end

  def test_deep_transform_values!
    hash = { b: { c: 3 } }
    a = ActiveSupport::OrderedOptions[hash]
    a.deep_transform_values!

    assert_equal 3, a.b.c
  end
end
