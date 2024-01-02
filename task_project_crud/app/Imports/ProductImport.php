<?php

namespace App\Imports;

use App\Models\Product;
use Maatwebsite\Excel\Concerns\ToModel;

class ProductImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Product([
            //
            'category_id' =>$row['1'],
            'subcategory_id' =>$row['2'],
            'name' =>$row['3'],
            'slug' =>$row['4'],
            'code' =>$row['5'],
            'unit' =>$row['6'],
            'color' =>$row['8'],
            'size' =>$row['9'],
            'video' =>$row['10'],
            'purchase_price' =>$row['11'],
            'selling_price' =>$row['12'],
            'discount_price' =>$row['13'],
            'stock_quantity' =>$row['14'],
            'description' =>$row['15'],
            'thumbnail' =>$row['16'],
            'images' =>$row['17'],
            'featured' =>$row['18'],
            'product_views' =>$row['19'],
            'today_deal' =>$row['22'],
            'status' =>$row['23'],
            'trendy' =>$row['21'],
            'admin_id' =>$row['26'],
        ]);
    }
}
