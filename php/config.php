<?php
declare(strict_types=1);

// Bevwire SDK configuration

class BevwireConfig
{
    public static function make_config(): array
    {
        return [
            "main" => [
                "name" => "Bevwire",
            ],
            "feature" => [
                "test" => [
          'options' => [
            'active' => false,
          ],
        ],
            ],
            "options" => [
                "base" => "https://bevwire.com/api",
                "headers" => [
          'content-type' => 'application/json',
        ],
                "entity" => [
                    "article" => [],
                    "company" => [],
                ],
            ],
            "entity" => [
        'article' => [
          'fields' => [],
          'name' => 'article',
          'op' => [
            'load' => [
              'input' => 'data',
              'name' => 'load',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'if_none_match',
                        'orig' => 'if_none_match',
                        'reqd' => false,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'method' => 'GET',
                  'orig' => '/read-finder-index.json',
                  'parts' => [
                    'read-finder-index.json',
                  ],
                  'select' => [
                    'exist' => [
                      'if_none_match',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'load',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'company' => [
          'fields' => [],
          'name' => 'company',
          'op' => [
            'load' => [
              'input' => 'data',
              'name' => 'load',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'query' => [
                      [
                        'active' => true,
                        'example' => 3,
                        'kind' => 'query',
                        'name' => 'limit',
                        'orig' => 'limit',
                        'reqd' => false,
                        'type' => '`$INTEGER`',
                      ],
                      [
                        'active' => true,
                        'example' => 'milam',
                        'kind' => 'query',
                        'name' => 'q',
                        'orig' => 'q',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'method' => 'GET',
                  'orig' => '/companies/search',
                  'parts' => [
                    'companies',
                    'search',
                  ],
                  'select' => [
                    '$action' => 'search',
                    'exist' => [
                      'limit',
                      'q',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'load',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
      ],
        ];
    }


    public static function make_feature(string $name)
    {
        require_once __DIR__ . '/features.php';
        return BevwireFeatures::make_feature($name);
    }
}
