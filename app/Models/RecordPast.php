<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RecordPast extends Model
{
    use HasFactory;

    protected $table = 'record_pasts';

    protected $fillable = [
        'cmn_customer_id',
        'description',
    ];
}
