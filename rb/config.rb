# Bevwire SDK configuration

module BevwireConfig
  def self.make_config
    {
      "main" => {
        "name" => "Bevwire",
      },
      "feature" => {
        "test" => {
          "options" => {
            "active" => false,
          },
        },
      },
      "options" => {
        "base" => "https://bevwire.com/api",
        "headers" => {
          "content-type" => "application/json",
        },
        "entity" => {
          "article" => {},
          "company" => {},
        },
      },
      "entity" => {
        "article" => {
          "fields" => [],
          "name" => "article",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "active" => true,
                  "args" => {
                    "header" => [
                      {
                        "active" => true,
                        "kind" => "header",
                        "name" => "if_none_match",
                        "orig" => "if_none_match",
                        "reqd" => false,
                        "type" => "`$STRING`",
                      },
                    ],
                  },
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/read-finder-index.json",
                  "parts" => [
                    "read-finder-index.json",
                  ],
                  "select" => {
                    "exist" => [
                      "if_none_match",
                    ],
                  },
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "index$" => 0,
                },
              ],
              "key$" => "load",
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "company" => {
          "fields" => [],
          "name" => "company",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "active" => true,
                  "args" => {
                    "query" => [
                      {
                        "active" => true,
                        "example" => 3,
                        "kind" => "query",
                        "name" => "limit",
                        "orig" => "limit",
                        "reqd" => false,
                        "type" => "`$INTEGER`",
                      },
                      {
                        "active" => true,
                        "example" => "milam",
                        "kind" => "query",
                        "name" => "q",
                        "orig" => "q",
                        "reqd" => true,
                        "type" => "`$STRING`",
                      },
                    ],
                  },
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/companies/search",
                  "parts" => [
                    "companies",
                    "search",
                  ],
                  "select" => {
                    "$action" => "search",
                    "exist" => [
                      "limit",
                      "q",
                    ],
                  },
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "index$" => 0,
                },
              ],
              "key$" => "load",
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
      },
    }
  end


  def self.make_feature(name)
    require_relative 'features'
    BevwireFeatures.make_feature(name)
  end
end
