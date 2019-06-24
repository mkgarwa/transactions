<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    protected function _convertCurrency($amount, $from, $to){
        $url = config('services.currency.url');
        $url  .= "?q=".$from."_".$to."&compact=ultra&apiKey=".config('services.currency.key');
        $data = json_decode(file_get_contents($url),true);
        $rate = $data[$from."_".$to];
        return round($amount * $rate, 2);
    }
}
