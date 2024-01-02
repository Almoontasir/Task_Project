<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Catagory;
use App\Models\Subcatagory;


class Product extends Model
{
    use HasFactory;
    protected $fillable = ['category_id','subcategory_id','name','slug','code','unit','tags','color','size','video','purchase_price','selling_price','discount_price','stock_quantity','description','thumbnail','images','featured','product_views','today_deal','status','trendy','admin_id'];

    public function category(){
        return $this->belongsTo(Catagory::class,'category_id');
    }

    public function subcategory(){
        return $this->belongsTo(Subcatagory::class,'subcategory_id');
    }

}
