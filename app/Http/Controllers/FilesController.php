<?php

namespace App\Http\Controllers;

use App\Models\Files;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class FilesController extends Controller
{
    public function saveNewFile(Request $request): \Illuminate\Http\JsonResponse
    {
        if(!is_dir(public_path('uploadsRecordPast'))){
            mkdir(public_path('uploadsRecordPast'));
        }

        $name = Str::random();
        $ext = $request->file('file')->getClientOriginalExtension();
        $path = asset('uploadsRecordPast/' . $name .'.'. $ext);
        $file = $request->file('file');
        $file->move(public_path('uploadsRecordPast'),$name .'.'. $ext);

        $newFile = Files::create([
            'name' => $name.'.'.$ext,
            'path' => $path,
            'cmn_customer_id' => $request->input('customer_id')
        ]);

        return response()->json($newFile,201);

    }

    public function getFilesByCustomer($id): \Illuminate\Http\JsonResponse
    {
        return response()->json(Files::where('cmn_customer_id',$id)->get());
    }
}
