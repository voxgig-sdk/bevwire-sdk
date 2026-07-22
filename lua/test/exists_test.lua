-- Bevwire SDK exists test

local sdk = require("bevwire_sdk")

describe("BevwireSDK", function()
  it("should create test SDK", function()
    local testsdk = sdk.test(nil, nil)
    assert.is_not_nil(testsdk)
  end)
end)
