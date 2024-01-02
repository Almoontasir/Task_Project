@extends('layouts.home_app')

@section('admin_contain')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">All SubCatagories</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">SubCategories</a></li>
              <li class="breadcrumb-item active">Show SubCategories</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

     <!-- Main content -->
     <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                      <h3 class="card-title">DataTable for Subcatagories</h3>
                      <button class="btn btn-success float-right" data-toggle="modal" data-target="#addModal">Add SubCategory</button>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                      <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                          <th>Serial Number</th>
                          <th>Category Name</th>
                          <th>SubCategory Name</th>
                          <th>SubCategory Slug</th>
                          <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                      @foreach ($data as $key=>$items)
                          
                      <tr>
                        <td>{{++$key}}</td>
                        <td>{{$items->Catagory_name}} </td>
                        <td>{{$items->Subcatagory_name}} </td>
                        <td>{{$items->Subcatagory_slug}}</td>
                        <td class="d-flex"> <a href="#" class="btn btn-sm btn-info mx-2 edit" data-id =" {{$items->id}}" data-toggle="modal" data-target="#EditModal"><i class="fas fa-edit"></i></a>
                            {{-- <a href="" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></a> --}}
                            <form action="{{route('subcatagory.delete',$items->id)}}" method="POST">
                                @csrf
                                @method('delete')
                                {{-- <input type="hidden" name="_method" value="delete"> --}}
                                <button type="submit" class="btn btn-sm btn-danger delete"><i class="fas fa-trash"></i></button>
                            </form>
                        </td>
                        {{-- <i class="fas fa-edit"> --}}
                      </tr>
                      @endforeach      
                        </tbody>
                        <tfoot>
                        <tr>
                          <th>Rendering engine</th>
                          <th>Browser</th>
                          <th>Platform(s)</th>
                          <th>Engine version</th>
                        
                        </tr>
                        </tfoot>
                      </table>
                    </div>
                    <!-- /.card-body -->
                  </div>
            </div>
          </div>     
        </div>
     </section>        



     
<!-- Modal for add data -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Category Title</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form method="POST" action="{{route('subcatagory.store')}}">
            @csrf
        <div class="modal-body">
            <div class="form-group">
                <select name="Catagory_id" id="" class="form-control">
                    @foreach ($catagory as $items)
                        
                    <option value="{{$items->id}}">{{$items->Catagory_name}}</option>
                    @endforeach
                </select>
                <small id="emailHelp" class="form-text text-muted">Select a category.</small>
              </div>
           
                <div class="form-group">
                  
                  <input type="text" class="form-control" name="Subcatagory_name" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter a Name">
                  <small id="emailHelp" class="form-text text-muted">Enter a Subcategory Name.</small>
                </div>
               
             
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Add Subcategories</button>

        </div>
    </form>
      </div>
    </div>
  </div>
<!-- Modal for edit data -->
<div class="modal fade" id="EditModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Category Title</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

            
       
        <form method="POST" action="{{route('subcatagory.update')}}">
            @csrf
            @method('put')
        <div class="modal-body">

            <div class="form-group">
                  
                <input type="text" class="form-control" name="Catagory_name" id="e_catagory_name" value =" "
                aria-describedby="emailHelp" placeholder="Enter a Name" readonly>
                <input type="hidden" id="e_catagory_id"name="Catagory_id">
                {{-- <select name="catagory_id" id="">
                    <option value="" id="e_catagory_name"></option>
                </select> --}}
                {{-- <small id="emailHelp" class="form-text text-muted">Enter a Subcategory Name.</small> --}}
              </div>
           
                <div class="form-group">
                  
                  <input type="text" class="form-control" name="Subcatagory_name" id="e_subcatagory_name" value =" "
                  aria-describedby="emailHelp" placeholder="Enter a Name">
                  <small id="emailHelp" class="form-text text-muted">Enter a Subcategory Name.</small>
                </div>
                <input type="hidden" id="e_subcatagory_id"name="id">
               
             
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Edit Subcategories</button>

        </div>
    </form>
   
      </div>
    </div>
  </div>
  @push('script')
      
  {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> --}}
  {{-- <script>
    $('body').on('click','.edit',function(){
      // let cat_id = $(this).data('id');
      let cat_id = $(this).attr('data-id');
    //   alert(cat_id);
      $.get("subcatagory/edit/"+cat_id,function(data){
        $('#e_catagory_name').val(data.Catagory_name);
        $('#e_catagory_id').val(data.Catagory_id);
        $('#e_subcatagory_name').val(data.Subcatagory_name);
        $('#e_subcatagory_id').val(data.id);
        console.log(data)

      });
    });
  </script> --}}

  @endpush 

@endsection    