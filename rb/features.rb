# Bevwire SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module BevwireFeatures
  def self.make_feature(name)
    case name
    when "base"
      BevwireBaseFeature.new
    when "test"
      BevwireTestFeature.new
    else
      BevwireBaseFeature.new
    end
  end
end
