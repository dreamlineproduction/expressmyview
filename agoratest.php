<?php

use Illuminate\Support\Facades\Http;

echo "testing agora recording stuff\n";

$customerKey = '5d2204567e9746c9aa63f8b778127c0c';
$customerSecret = '12e77135fa01423b8196052c8c9c7d36';
$credentials = $customerKey.':'.$customerSecret;
$base64Credentials = base64_encode($credentials);
