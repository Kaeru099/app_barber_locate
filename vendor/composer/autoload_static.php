<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit17ebb5a0969c4f1f95708ffc79b02a77
{
    public static $prefixLengthsPsr4 = array (
        'S' => 
        array (
            'Slim\\Http\\' => 10,
        ),
        'P' => 
        array (
            'Psr\\Http\\Message\\' => 17,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Slim\\Http\\' => 
        array (
            0 => __DIR__ . '/..' . '/slim/http/src',
        ),
        'Psr\\Http\\Message\\' => 
        array (
            0 => __DIR__ . '/..' . '/psr/http-message/src',
            1 => __DIR__ . '/..' . '/psr/http-factory/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit17ebb5a0969c4f1f95708ffc79b02a77::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit17ebb5a0969c4f1f95708ffc79b02a77::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit17ebb5a0969c4f1f95708ffc79b02a77::$classMap;

        }, null, ClassLoader::class);
    }
}