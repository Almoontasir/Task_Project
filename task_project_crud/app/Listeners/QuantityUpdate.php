<?php

namespace App\Listeners;

use App\Events\ProductPurchased;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Models\Product;

class QuantityUpdate
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(ProductPurchased $event): void
    {
        //
        $id = $event->id;
        $amount =  Product::where('id',$id)->count('unit');

        if($amount>0)
        {

            Product::where('id',$id)->decrement('unit');
        }
     
    }
}
