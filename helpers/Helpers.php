<?php
namespace Helpers;

final class Helpers
{
    public static function sanitizeInt($int)
    {
        return (int) $int;
    }

    public static function sanitizeBool($bool)
    {
        return (bool) $bool;
    }
}