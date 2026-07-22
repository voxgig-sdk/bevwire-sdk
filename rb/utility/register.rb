# Bevwire SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

BevwireUtility.registrar = ->(u) {
  u.clean = BevwireUtilities::Clean
  u.done = BevwireUtilities::Done
  u.make_error = BevwireUtilities::MakeError
  u.feature_add = BevwireUtilities::FeatureAdd
  u.feature_hook = BevwireUtilities::FeatureHook
  u.feature_init = BevwireUtilities::FeatureInit
  u.fetcher = BevwireUtilities::Fetcher
  u.make_fetch_def = BevwireUtilities::MakeFetchDef
  u.make_context = BevwireUtilities::MakeContext
  u.make_options = BevwireUtilities::MakeOptions
  u.make_request = BevwireUtilities::MakeRequest
  u.make_response = BevwireUtilities::MakeResponse
  u.make_result = BevwireUtilities::MakeResult
  u.make_point = BevwireUtilities::MakePoint
  u.make_spec = BevwireUtilities::MakeSpec
  u.make_url = BevwireUtilities::MakeUrl
  u.param = BevwireUtilities::Param
  u.prepare_auth = BevwireUtilities::PrepareAuth
  u.prepare_body = BevwireUtilities::PrepareBody
  u.prepare_headers = BevwireUtilities::PrepareHeaders
  u.prepare_method = BevwireUtilities::PrepareMethod
  u.prepare_params = BevwireUtilities::PrepareParams
  u.prepare_path = BevwireUtilities::PreparePath
  u.prepare_query = BevwireUtilities::PrepareQuery
  u.result_basic = BevwireUtilities::ResultBasic
  u.result_body = BevwireUtilities::ResultBody
  u.result_headers = BevwireUtilities::ResultHeaders
  u.transform_request = BevwireUtilities::TransformRequest
  u.transform_response = BevwireUtilities::TransformResponse
}
