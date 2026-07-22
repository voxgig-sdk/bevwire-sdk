<?php
declare(strict_types=1);

// Bevwire SDK utility: prepare_body

class BevwirePrepareBody
{
    public static function call(BevwireContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}
