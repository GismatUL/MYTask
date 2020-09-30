<?php

namespace App\Http\Controllers;

use App\Exchange;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use SimpleXMLElement;
use Illuminate\Support\Arr;

class Task1Controller extends Controller
{
    public function Task1(Request $request){
        if ($request->isMethod('post')) {
            $data = $request->all();
            $date = $data['daterange'];
            $counter=Exchange::where(['date'=>date("d.m.Y", strtotime($date))])->count();
            if ($counter==0)
            {
                $url = 'https://www.cbar.az/currencies/' . date("d.m.Y", strtotime($date)) . '.xml';
                $xml = simplexml_load_file($url);
                $json = json_encode($xml);
                $array = json_decode($json,TRUE);
                $array = Arr::flatten($array);
                $a=count($array);
                for($i=4;$i<count($array)-5;$i+=4)
                {
                    if (trim($array[$i]," ")=='Xarici valyutalar')
                        $a=$i;
                    if ($i<$a)
                        DB::table('exchange_tables')->insert([
                            'code'=>$array[$i],
                            'exchange'=>$array[$i+2],
                            'rate'=>$array[$i+3],
                            'date'=>date("d.m.Y", strtotime($date))
                        ]);
                    elseif($i>=$a)
                        DB::table('exchange_tables')->insert([
                            'code'=>$array[$i+1],
                            'exchange'=>$array[$i+3],
                            'rate'=>$array[$i+4],
                            'date'=>date("d.m.Y", strtotime($date))
                        ]);
                }


            }

           $results=Exchange::where(['date'=>date("d.m.Y", strtotime($date))])->get();
           $results=json_decode(json_encode($results));
           return view('Task1.task')->with(compact('results'));

        }
        $results="";
        return view('Task1.task')->with(compact('results'));
    }
}
