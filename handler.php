<?php
require 'vendor/autoload.php';

use Helpers\Helpers;
use Krugozor\Database\Mysql;

$data = file_get_contents('php://input');
$data = json_decode($data);
$characterPos = Helpers::sanitizeInt($data->characterPos);
$rockPos = Helpers::sanitizeInt($data->rockPos);
$rockSize = Helpers::sanitizeInt($data->rockSize);
$runTime = Helpers::sanitizeInt($data->runTime);
$success = Helpers::sanitizeBool($data->success);
$easyWin = Helpers::sanitizeBool($data->easyWin);
$db = Mysql::create('localhost', 'root', 'root')
    ->setCharset('utf8')
    ->setDatabaseName('wow_junior_test');
$db->query('
    CREATE TABLE IF NOT EXISTS runs(
        characterPosition smallint ,
        rockPosition smallint,
        rockSize smallint,
        runTime int ,
        success boolean,
        easyWin boolean
    )
');
$runInfo = array(
    'characterPosition' => $characterPos,
    'rockPosition' => $rockPos,
    'rockSize' => $rockSize,
    'runTime' => $runTime,
    'success' => $success,
    'easyWin' => $easyWin
);
$db->query('INSERT INTO `runs` SET ?As', $runInfo);
