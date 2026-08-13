# Bevwire SDK exists test

import pytest
from bevwire_sdk import BevwireSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = BevwireSDK.test(None, None)
        assert testsdk is not None
