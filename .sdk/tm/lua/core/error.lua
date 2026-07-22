-- Bevwire SDK error

local BevwireError = {}
BevwireError.__index = BevwireError


function BevwireError.new(code, msg, ctx)
  local self = setmetatable({}, BevwireError)
  self.is_sdk_error = true
  self.sdk = "Bevwire"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function BevwireError:error()
  return self.msg
end


function BevwireError:__tostring()
  return self.msg
end


return BevwireError
