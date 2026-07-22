# Bevwire SDK feature factory

from feature.base_feature import BevwireBaseFeature
from feature.test_feature import BevwireTestFeature


def _make_feature(name):
    features = {
        "base": lambda: BevwireBaseFeature(),
        "test": lambda: BevwireTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
