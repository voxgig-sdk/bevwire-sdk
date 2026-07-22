<?php
declare(strict_types=1);

// Bevwire SDK base feature

class BevwireBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    // Positions this feature when added via the client `extend` option:
    // "__before__" / "__after__" / "__replace__" name an already-added
    // feature (mirrors the ts feature `_options`). Declared so setting it
    // on an extension instance avoids the dynamic-property deprecation.
    public ?array $_options = null;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(BevwireContext $ctx, array $options): void {}
    public function PostConstruct(BevwireContext $ctx): void {}
    public function PostConstructEntity(BevwireContext $ctx): void {}
    public function SetData(BevwireContext $ctx): void {}
    public function GetData(BevwireContext $ctx): void {}
    public function GetMatch(BevwireContext $ctx): void {}
    public function SetMatch(BevwireContext $ctx): void {}
    public function PrePoint(BevwireContext $ctx): void {}
    public function PreSpec(BevwireContext $ctx): void {}
    public function PreRequest(BevwireContext $ctx): void {}
    public function PreResponse(BevwireContext $ctx): void {}
    public function PreResult(BevwireContext $ctx): void {}
    public function PreDone(BevwireContext $ctx): void {}
    public function PreUnexpected(BevwireContext $ctx): void {}
}
