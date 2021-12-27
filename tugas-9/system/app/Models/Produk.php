<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Produk extends Model
{
    use HasFactory;
    protected $table = "produk";

    function seller(){
        return $this->belongsTo(User::class, 'id_user');
    }

    function getHargaStringAttribute(){
        return "Rp.".number_format($this->attributes['harga']);
    }
}
