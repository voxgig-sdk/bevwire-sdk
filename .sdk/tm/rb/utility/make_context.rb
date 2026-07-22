# Bevwire SDK utility: make_context
require_relative '../core/context'
module BevwireUtilities
  MakeContext = ->(ctxmap, basectx) {
    BevwireContext.new(ctxmap, basectx)
  }
end
