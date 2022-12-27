<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductSupplier extends Model
{
    protected $table = 'product_supplier';
    protected $fillable =[
        "supplier_id", "product_id", "price"
    ];

    public function product()
    {
        return $this->hasMany('App/Product');
    }

    public function supplier()
    {
        return $this->hasMany('App/Supplier');
    }
}
