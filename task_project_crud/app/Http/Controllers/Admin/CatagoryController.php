<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Models\Catagory;
use Illuminate\Support\Str;
use Image;
use File;
class CatagoryController extends Controller
{
    //
    public function __construct()
    {
        $this->middleware('auth');
    }


    public function index()
    {
        // $data = DB::table('catagories')->get();
        $data = Catagory::all();
        
        return view('admin.catagories.catagory',compact('data'));
    }



    public function store(Request $request)
    {
        // dd($request->all());
        // return response()->json($request);
        $slug = Str::of($request->Catagory_name)->slug('-');
        $photo = $request->icon;
        $photo_name = $slug.'.'.$photo->getClientOriginalExtension();
        Image::make($photo)->save('file/category_icon/'.$photo_name);//->resize(300,150)
        $data = array([
            'Catagory_name'=>$request->Catagory_name,
            'Catagory_slug'=>$slug,
            'home_page'=>$request->home_page,
            'icon'=>'file/category_icon/'.$photo_name,
        ]);
        // return response()->json($data);
         $data = DB::table('catagories')->insert($data);
         $notification = array('messege'=>'data inserted succesfully','alert-type'=>'success');
         return redirect()->back()->with($notification);


        
       
    }



    public function destroy($id)
    {
        // dd($id);
        $data = DB::table('catagories')->find($id);
        if(File::exists($data->icon))
        {
            File::delete($data->icon);
            // unlink($data->brand_logo);
        }
         DB::table('catagories')->where('id',$id)->delete();
        
        
        $notification = array('messege'=>'data deleted succesfully','alert-type'=>'success');
         return redirect()->back()->with($notification);
    }


    public function edit($id)
    {
        //  dd($id);
         $data = DB::table('catagories')->where('id',$id)->first();
         return response()->json($data);

        
        
    }


    public function update(Request $request)
    {
        // dd($request->all());
        //   return response()->json($request);
        $slug = Str::of($request->Catagory_name)->slug('-');
        $photo = $request->icon;
        $old_photo = $request->old_icon;
        if($photo)
        {
            // dd($photo);
            $photo_name = $slug.'.'.$photo->getClientOriginalExtension();
             if(File::exists( $old_photo))
             {
                File::delete($old_photo);
             }

             Image::make($photo)->save('file/category_icon/'.$photo_name);//->resize(300,150)
             $file_path = 'file/category_icon/'.$photo_name;
            //  dd($file_path);

        }
        else
        {
           $file_path =  $old_photo;
        }
       
        $id = $request->id;
        $data = array(
            'Catagory_name'=>$request->Catagory_name,
            'Catagory_slug'=>$slug,
            'home_page'=>$request->home_page,
            'icon'=>$file_path,
        );




        DB::table('catagories')->where('id',$id)->update($data);
        // return response()->json($d);
         
         $notification = array('messege'=>'data updated succesfully','alert-type'=>'success');
         return redirect()->back()->with($notification);
       
    }

    public function getSubCategory($id)
    {
        // dd("moon");
        $data = DB::table('subcatagories')->where('Catagory_id',$id)->get();
        // $data = DB::table('warehouses')->where('id',$id)->first();
        return response()->json($data);
       
        
    
    }

}