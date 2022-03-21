<?php

require_once __DIR__ . '/vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

$client = new MongoDB\Client(
    'mongodb://' . $_ENV['MDB_USER'] . ':' . $_ENV['MDB_PASSWORD'] . '@localhost:27017/admin?retryWrites=true&w=majority'
);

$collection = $client->selectCollection('sample_data', 'testphp');

$document = $collection->insertOne([
    'author' => 'Naomi',
    'message' => 'hello world!',
]);

$document = $collection->findOne();

var_dump($document);

?>
