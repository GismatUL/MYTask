<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Arr;

class ApiOpenMapController extends Controller
{
    public function Task2(Request $request){

        return view('Task2.task');
    }
    public function getWeather(Request $request){

        $data = $request->all();
        $url = "http://api.openweathermap.org/data/2.5/weather?q=".$data['city']."&lang=az&units=metric&appid=b0b005e260b79676823ba59bdcbc4d2b";
        $arr=file_get_contents($url);
        $array=json_decode($arr);
        $temp=$array->main->temp;

        return $temp;
    }
}
