<?php
declare(strict_types=1);

// Bevwire SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class BevwireMakeContext
{
    public static function call(array $ctxmap, ?BevwireContext $basectx): BevwireContext
    {
        return new BevwireContext($ctxmap, $basectx);
    }
}
