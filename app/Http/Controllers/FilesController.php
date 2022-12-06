<?php

namespace App\Http\Controllers;

use App\Http\Requests\FileSaveRequest;
use App\Models\Files;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Spatie\ImageOptimizer\OptimizerChainFactory;

class FilesController extends Controller
{
    public function saveNewFile(FileSaveRequest $request): \Illuminate\Http\JsonResponse
    {
        if(!is_dir(public_path('uploadsRecordPast'))){
            mkdir(public_path('uploadsRecordPast'));
        }

        $name = Str::random();
        $ext = $request->file('file')->getClientOriginalExtension();
        $path = asset('uploadsRecordPast/' . $name .'.'. $ext);
        $file = $request->file('file');
        $file->move(public_path('uploadsRecordPast'),$name .'.'. $ext);

        if( in_array($ext,["svg", "gift", "webp", "jpeg", "png"]) ){
            $optimizerChain = OptimizerChainFactory::create();
            $optimizerChain->optimize(public_path('uploadsRecordPast/') . $name .'.'. $ext);
        }

        $newFile = Files::create([
            'name' => $name.'.'.$ext,
            'path' => $path,
            'original_name' => $request->file('file')->getClientOriginalName(),
            'cmn_customer_id' => $request->input('customer_id')
        ]);

        return response()->json($newFile,201);
    }

    public function getFilesByCustomer($id): \Illuminate\Http\JsonResponse
    {
        return response()->json(Files::where('cmn_customer_id',$id)->get());
    }

    public function deleteFiles($id): \Illuminate\Http\JsonResponse
    {
        $file = Files::where('id',$id)->first();

        unlink(public_path('uploadsRecordPast/') . $file->name);

        return response()->json(
            $file->delete()
        );
    }

    public function getOnlyImages($id): \Illuminate\Http\JsonResponse
    {
        $files = Files::where('cmn_customer_id',$id)->get();
        $validFiles = [];

        for($i = 0; $i < count($files); $i++){
            $extAllow = ['jpg','png','jpeg'];
            $parts = explode('.',$files[$i]->name);

            if( in_array(end($parts),$extAllow) )
                $validFiles[] = $files[$i];
        };
        return response()->json($validFiles);
        //dd($rs->toArray());
    }
}
