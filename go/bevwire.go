package voxgigbevwiresdk

import (
	"github.com/voxgig-sdk/bevwire-sdk/go/core"
	"github.com/voxgig-sdk/bevwire-sdk/go/entity"
	"github.com/voxgig-sdk/bevwire-sdk/go/feature"
	_ "github.com/voxgig-sdk/bevwire-sdk/go/utility"
)

// Type aliases preserve external API.
type BevwireSDK = core.BevwireSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type BevwireEntity = core.BevwireEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type BevwireError = core.BevwireError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewArticleEntityFunc = func(client *core.BevwireSDK, entopts map[string]any) core.BevwireEntity {
		return entity.NewArticleEntity(client, entopts)
	}
	core.NewCompanyEntityFunc = func(client *core.BevwireSDK, entopts map[string]any) core.BevwireEntity {
		return entity.NewCompanyEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewBevwireSDK = core.NewBevwireSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig

// No-arg convenience constructors. Go has no default-argument syntax,
// so these aliases let callers write `sdk.New()` / `sdk.Test()`
// instead of `sdk.NewBevwireSDK(nil)` / `sdk.TestSDK(nil, nil)`
// for the common no-options case.
func New() *BevwireSDK  { return NewBevwireSDK(nil) }
func Test() *BevwireSDK { return TestSDK(nil, nil) }
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature
