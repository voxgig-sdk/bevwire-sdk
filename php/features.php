<?php
declare(strict_types=1);

// Bevwire SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class BevwireFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new BevwireBaseFeature();
            case "test":
                return new BevwireTestFeature();
            default:
                return new BevwireBaseFeature();
        }
    }
}
