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
        return response()->json(RecordPast::where('cmn_customer_id',$id)->where("status",2)->get());
    }

    public function getRecordPastByCustomerHis($id): \Illuminate\Http\JsonResponse
    {
        return response()->json(RecordPast::where('cmn_customer_id',$id)->where("status",1)->get());
    }

    public function deleteRecordPast($id): \Illuminate\Http\JsonResponse
    {
        $record = RecordPast::where('id',$id)->first();

        return response()->json($record->delete());
    }

    public function getOneRecordPass($id): \Illuminate\Http\JsonResponse
    {
        $record = RecordPast::where("id",$id)->first();

        if(is_null($record)) return response()->json([],404);

        return response()->json($record);
    }

    public function updateRecord(Request $request,$id): \Illuminate\Http\JsonResponse
    {
        $record = RecordPast::where("id",$id)->first();

        if(is_null($record)) return response()->json([],404);

        $record->update($request->all());

        return response()->json($record->refresh())
;    }
}
