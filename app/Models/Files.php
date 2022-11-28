<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Files extends Model
{
    use HasFactory;

    protected $table = 'files';
    protected $casts = [
        'created_at' => "date:Y-m-d",
    ];
    protected $fillable = [
        'name',
        'path',
        'cmn_customer_id',
    ];

}
