@extends('layouts.home_app')

@section('admin_contain')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">All Catagories</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Categories</a></li>
              <li class="breadcrumb-item active">Show Categories</li>
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
                      <h3 class="card-title">DataTable with default features</h3>
                      <button class="btn btn-success float-right" data-toggle="modal" data-target="#addModal">Add Category</button>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                      <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                          <th>Serial Number</th>
                          <th>Category Name</th>
                          <th>Category Slug</th>
                          <th>Icon</th>
                          <th>Home Page</th>
                          <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                      @foreach ($data as $key=>$items)
                          
                      <tr>
                        <td>{{++$key}}</td>
                        <td>{{$items->Catagory_name}} </td>
                        <td>{{$items->Catagory_slug}}</td>
                        <td>
                          <img src="{{$items->icon}}" alt="not found" width="120" height="35">
                          </td>
                        <td>@if( $items->home_page==1)
                          <span class="badge badge-danger">Homepage</span>
                          @else
                            <span class="badge badge-success">Normal</span>
                           @endif
                          </td>
                        <td class="d-flex"> <a href="#" class="btn btn-sm btn-info mx-2 edit" data-id =" {{$items->id}}" data-toggle="modal" data-target="#EditModal"><i class="fas fa-edit"></i></a>
                            {{-- <a href="" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></a> --}}
                            <form action="{{route('catagory.delete',$items->id)}}" method="POST">
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
                          <th>Platform(s)</th>
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
        <form method="POST" action="{{route('catagory.store')}}" enctype="multipart/form-data">
            @csrf
        <div class="modal-body">
           
                <div class="form-group">
                  
                  <input type="text" class="form-control  @error('Catagory_name') is-invalid @enderror" name="Catagory_name" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter a Name" required>
                  <small id="emailHelp" class="form-text text-muted">Enter a category Name.</small>
                  @error('Catagory_name')
                            <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>

                <div class="form-group">
                  
                  
                  <input type="checkbox" name="home_page" value="1"  data-bootstrap-switch data-off-color="danger" data-on-color="success">
             
                 <small id="emailHelp" class="form-text text-muted">Select is will go to homepage or not.</small>
               </div>

                <div class="form-group">
                  
                  <input class="dropify @error('icon') is-invalid @enderror" type="file" name="icon" accept="image/*" required>
                  <small id="emailHelp" class="form-text text-muted">Enter a Icon.</small>
                  @error('icon')
                            <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
               
               
             
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Add categories</button>

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

            
       
        <form method="POST" action="{{route('catagory.update')}}" enctype="multipart/form-data">
            @csrf
            @method('put')
        <div class="modal-body">
           
          <input type="hidden" id="e_catagory_id"name="id">
          <input type="hidden" id="e_icon"name="old_icon">
                <div class="form-group">
                  
                  <input type="text" class="form-control @error('Catagory_name') is-invalid @enderror" name="Catagory_name" id="e_catagory_name" 
                  aria-describedby="emailHelp" placeholder="Enter a Name" required>
                  <small id="emailHelp" class="form-text text-muted">Enter a category Name.</small>
                  @error('Catagory_name')
                            <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
                <div class="form-group">
                  
                  
                  <input type="checkbox" name="home_page" value="1" id="setChecked"  data-off-color="danger" data-on-color="success">
             
                 <small id="emailHelp" class="form-text text-muted">Select is will go to homepage or not.</small>
               </div>

                <div class="form-group">
                  
                  <input class="dropify @error('icon') is-invalid @enderror" name="icon" type="file" accept="image/*" required>
                  <small id="emailHelp" class="form-text text-muted">Enter a Icon.</small>
                  @error('icon')
                            <div class="alert alert-danger">{{ $message }}</div>
                  @enderror
                </div>
               
             
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Edit Category</button>

        </div>
    </form>
   
      </div>
    </div>
  </div>
  @push('script')
      
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  
    <script src="{{ asset('backend') }}/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>

    <script>
      $("input[data-bootstrap-switch]").each(function(){
      $(this).bootstrapSwitch('state', $(this).prop('checked'));
    });
    
    </script>
  <script>
    $('body').on('click','.edit',function(){
      // let cat_id = $(this).data('id');
      let cat_id = $(this).attr('data-id');
      // alert(cat_id);
      $.get("catagory/edit/"+cat_id,function(data){
        $('#e_catagory_name').val(data.Catagory_name);
        $('#e_catagory_id').val(data.id);
        $('#e_icon').val(data.icon);
        if(data.home_page==1)
        {
          $("#setChecked").prop("checked",true);
          // console.log("moon")
          // document.getElementById('setChecked').checked=true;

        }
        else
        {
          $("#setChecked").prop("checked",false);
        }
        // console.log(data.id);

      });
    });
  </script>

  @endpush 

@endsection    