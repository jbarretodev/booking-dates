<?php

namespace App\Http\Controllers;

use App\Models\RecordPast;
use Illuminate\Http\Request;

class RecordPastController extends Controller
{
    public function saveNewRecordPast(Request $request): \Illuminate\Http\JsonResponse
    {
        return response()->json(RecordPast::create($request->all()));
    }

    public function getRecordPastByCustomer($id): \Illuminate\Http\JsonResponse
    {
        return response()->json(RecordPast::where('id',$id)->get());
    }
}
