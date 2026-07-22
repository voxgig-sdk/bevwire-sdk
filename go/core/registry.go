package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewArticleEntityFunc func(client *BevwireSDK, entopts map[string]any) BevwireEntity

var NewCompanyEntityFunc func(client *BevwireSDK, entopts map[string]any) BevwireEntity

