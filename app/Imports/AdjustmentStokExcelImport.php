<?php

namespace App\Imports;

use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

use App\Warehouse;
use App\Product_Warehouse;
use App\Product;
use Illuminate\Support\Facades\Validator;

class AdjustmentStokExcelImport implements ToCollection ,WithHeadingRow
{
    /**
    * @param Collection $collection
    */
    public function collection(Collection $collection)
    {

        Validator::make($collection->toArray(),
            [   '*.product_id'  => 'required|integer',
                '*.qty'         => 'required|integer',
                '*.price'       => 'required|integer'],
            [   '*.product_id.integer'      => "Product ID Harus Angka",
                '*.qty.integer'             => "QTY Harus Angka",
                '*.price.integer'           => "Price age Harus Angka"]
        )->validate();

        $gudang = request('to_warehouse_id');


        foreach ($collection as $row) {

            $id = $row['product_id'];
            // Check already exists
            $search = Product::where('id', $id)->first();

            if($search == true){
                $find = Product_Warehouse::where('product_id', $id)->first();
                if($find==true){
                    Product_Warehouse::where('product_id', $id)->update([
                        'warehouse_id'=> $gudang,
                        'qty' => $row['qty'],
                        'price' => $row['price']
                    ]);
                }else{
                    Product_Warehouse::create([
                        'product_id' => $row['product_id'],
                        'warehouse_id'=> $gudang,
                        'qty' => $row['qty'],
                        'price' => $row['price']
                    ]);
                }
            }else{
                return redirect('qty_adjustment')->withErrors('message_error', 'Product "'.$row['product_id'].'" does not exist!');
            }

        }

    }
    public function headingRow(): int {
        return 1;
    }


}
