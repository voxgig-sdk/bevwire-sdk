<?php
declare(strict_types=1);

// Bevwire SDK utility: result_headers

class BevwireResultHeaders
{
    public static function call(BevwireContext $ctx): ?BevwireResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
