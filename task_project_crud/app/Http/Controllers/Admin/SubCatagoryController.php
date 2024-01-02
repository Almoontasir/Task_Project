<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Models\Catagory;
use App\Models\SubCatagory;
use Illuminate\Support\Str;

class SubCatagoryController extends Controller
{
    //
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data = DB::table('subcatagories')->join('catagories','subcatagories.Catagory_id','catagories.id')->select('subcatagories.*','catagories.Catagory_name')->get();
        // dd($data);
        // return response()->json($data);
        $catagory = DB::table('catagories')->get();
        return view('admin.subCatagory.subcatagory',compact('data','catagory'));
    }
    public function store(Request $request)
    {
        // return response()->json($request);
        $slug =  Str::of($request->Subcatagory_name)->slug('-');
        $data = array(
            'Catagory_id'=>$request->Catagory_id,
            'Subcatagory_name'=>$request->Subcatagory_name,
            'Subcatagory_slug'=>$slug,
        );
        DB::table('subcatagories')->insert($data);
        $notification = array('messege'=>'data inserted succesfully','alert-type'=>'success');
        return redirect()->back()->with($notification);
      
    }
    public function destroy($id)
    {
        DB::table('subcatagories')->where('id',$id)->delete();
        $notification = array('messege'=>'data deleted succesfully','alert-type'=>'success');
        return redirect()->back()->with($notification);
    }
    public function edit($id)
    {
        //  dd($id);
         $data = DB::table('subcatagories')->join('catagories','subcatagories.Catagory_id','catagories.id')->select('subcatagories.*','catagories.Catagory_name')->where('subcatagories.id',$id)->first();
         return response()->json($data);

        
        
       
    }
    public function update(Request $request)
    {
        //    return response()->json($request);
           $slug =  Str::of($request->Subcatagory_name)->slug('-');
           $data = array(
               'Catagory_id'=>$request->Catagory_id,
               'Subcatagory_name'=>$request->Subcatagory_name,
               'Subcatagory_slug'=>$slug,
           );
        // $data =array();
        // $data['Catagory_name'] = $request->Catagory_name;
        // $data['Catagory_slug'] = $request->Catagory_name;

        // return response()->json($data);
        DB::table('subcatagories')->where('id',$request->id)->update($data);
        // return response()->json($d);
         
         $notification = array('messege'=>'data updated succesfully','alert-type'=>'success');
         return redirect()->back()->with($notification);
       
    }

}
