@extends('layouts.home_app')

@section('admin_contain')


 <!-- Content Wrapper. Contains page content -->
   <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>General Form</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">General Form</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
          <div class="row">
              <!-- left column -->
              <div class="col-8">
              <form method="POST" id="myform" action="{{route('import')}}" enctype="multipart/form-data">
                @csrf
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Import Product</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              
                <div class="card-body">
                    <div class="form-group">
                        
                        <input type="file" name="file"  value="{{old('file')}}"  required=""  class="dropify @error('file') is-invalid @enderror">
                            @error('file')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                      </div>

                      

               
                </div>
                <!-- /.card-body -->

             
              
            </div>
            <!-- /.card -->
            <button id="button"   class="btn  btn-info ml-2">Submit</button>
          </form>
          </div>

          <!--/.col (left) -->
          <!-- right column -->
          <div class="col-4">
            <!-- Form Element sizes -->
            <div class="card card-success">
              {{-- <div class="card-header">
                <h3 class="card-title">Different Height</h3>
              </div> --}}
              <div class="card-body">
                <a id="button" href="{{route('export')}}"  class="btn  btn-info d-flex justify-content-center">Export User Data</a>
 
                
              </div>

              <!-- /.card-body -->
            </div>
            <!-- /.card -->


          </div>
          <!--/.col (right) -->
        
           
         



        </div>

        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div> 
  <!-- /.content-wrapper -->
  @push('script')
  <script src="{{ asset('backend') }}/plugins/dropify/dropify.js"></script>
  <script>
    $('.dropify').dropify();
</script>
  @endpush


@endsection