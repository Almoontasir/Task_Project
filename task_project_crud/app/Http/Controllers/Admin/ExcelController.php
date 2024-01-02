<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Imports\ProductImport;                                    
use App\Exports\ProductExport;                                    
use Maatwebsite\Excel\Facades\Excel;

class ExcelController extends Controller
{
    //
    public function importExportView()
    {
        return view('admin.import');
    }

    public function import(Request $request)
    {
        Excel::import(new ProductImport,$request->file('file'));
        $notification=array('messege' => 'Product Inserted!', 'alert-type' => 'success');
       return redirect()->back()->with($notification);
    }

    public function export()
    {
        return Excel::download(new ProductExport,'product.xlsx');
      
    }
}
