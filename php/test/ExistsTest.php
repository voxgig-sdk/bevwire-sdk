<?php
declare(strict_types=1);

// Bevwire SDK exists test

require_once __DIR__ . '/../bevwire_sdk.php';

use PHPUnit\Framework\TestCase;

class ExistsTest extends TestCase
{
    public function test_create_test_sdk(): void
    {
        $testsdk = BevwireSDK::test(null, null);
        $this->assertNotNull($testsdk);
    }
}
