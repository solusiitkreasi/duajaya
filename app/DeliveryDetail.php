<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DeliveryDetail extends Model
{
    protected $table = 'deliveries_detail';

    protected $fillable =[
        "id_deliveries", "id_product", "qty_beli","qty_kirim", "qty_terima", "reference_po"
    ];

    public function product()
    {
    	return $this->belongsTo("App\Product");
    }

    public function delivery()
    {
    	return $this->belongsTo("App\Delivery");
    }

    public function unit()
    {
    	return $this->belongsTo("App\Unit");
    }

    public function sale()
    {
    	return $this->belongsTo("App\Sale");
    }
}
