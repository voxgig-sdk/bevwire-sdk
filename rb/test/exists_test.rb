# Bevwire SDK exists test

require "minitest/autorun"
require_relative "../Bevwire_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = BevwireSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
