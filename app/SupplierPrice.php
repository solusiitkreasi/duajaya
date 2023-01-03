<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SupplierPrice extends Model
{
	protected $table = 'product_supplier';
    protected $fillable =[

        "supplier_id","product_id", "price"
    ];

    public function product()
    {
        return $this->belongsTo('App\Product');
    }

    public function supplier()
    {
        return $this->belongsTo('App\Supplier');
    }
}
