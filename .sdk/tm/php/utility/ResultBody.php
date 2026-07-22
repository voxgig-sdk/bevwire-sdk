<?php
declare(strict_types=1);

// Bevwire SDK utility: result_body

class BevwireResultBody
{
    public static function call(BevwireContext $ctx): ?BevwireResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
