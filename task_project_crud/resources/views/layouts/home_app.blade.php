<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Test Project | Dashboard</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="{{asset('backend')}}/plugins/fontawesome-free/css/all.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="{{asset('backend')}}/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('backend')}}/dist/css/adminlte.min.css">
  {{-- <link rel="stylesheet" href="{{asset('backend')}}/plugins/sweetalert/sweetalert.css"> --}}
  <link rel="stylesheet" href="{{asset('backend')}}/plugins/toastr/toastr.min.css">
  <link rel="stylesheet" href="{{asset('backend')}}/plugins/toastr/toastr.css">
  <link rel="stylesheet" href="{{asset('backend')}}/plugins/summernote/summernote-bs4.min.css">
  <link rel="stylesheet" href="{{asset('backend')}}/plugins/dropify/dropify.css">
  <link rel="stylesheet" href="{{asset('backend')}}/plugins/tagsinput/bootstrap-tagsinput.css">

 
  <!-- DataTables -->
  <link rel="stylesheet" href="{{asset('backend')}}/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="{{asset('backend')}}/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="{{asset('backend')}}/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">

  <style>

    input:-webkit-autofill,
    input:-webkit-autofill:focus {
        transition: background-color 600000s 0s, color 600000s 0s;
    }
    input[data-autocompleted] {
        background-color: transparent !important;
    }
    </style>
    @stack('css')
</head>
<body >
    @guest
    
    @else
    <div class="hold-transition dark-mode bg_color_control sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
    <div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__wobble" src="{{asset('backend')}}/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- Navbar -->
  @include('layouts.home_partials.navbar')
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  @include('layouts.home_partials.sidebar')
  <!--end Main Sidebar Container -->

  @endguest

  <main class="py-4">
    @yield('admin_contain')
  </main>
  

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
 
    </div>
</div>
<!-- ./wrapper -->



<!-- REQUIRED SCRIPTS -->

<script src="{{ asset('backend') }}/plugins/dropify/dropify.js"></script>
<!-- jQuery -->
<script src="{{asset('backend')}}/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="{{asset('backend')}}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script src="{{asset('backend')}}/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="{{asset('backend')}}/dist/js/adminlte.js"></script>

<!-- PAGE PLUGINS -->
<!-- jQuery Mapael -->
<script src="{{asset('backend')}}/plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
<script src="{{asset('backend')}}/plugins/raphael/raphael.min.js"></script>
<script src="{{asset('backend')}}/plugins/jquery-mapael/jquery.mapael.min.js"></script>
<script src="{{asset('backend')}}/plugins/jquery-mapael/maps/usa_states.min.js"></script>
<!-- ChartJS -->
<script src="{{asset('backend')}}/plugins/chart.js/Chart.min.js"></script>

<!-- AdminLTE for demo purposes -->
<script src="{{asset('backend')}}/dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{asset('backend')}}/dist/js/pages/dashboard2.js"></script>
<script src="{{asset('backend')}}/plugins/sweetalert/sweetalert.min.js"></script>
{{-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> --}}
<script src="{{asset('backend')}}/plugins/toastr/toastr.min.js"></script>
@stack('script')

<!-- DataTables  & Plugins -->
<script src="{{asset('backend')}}/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="{{asset('backend')}}/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="{{asset('backend')}}/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="{{asset('backend')}}/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="{{asset('backend')}}/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="{{asset('backend')}}/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="{{asset('backend')}}/plugins/jszip/jszip.min.js"></script>
<script src="{{asset('backend')}}/plugins/pdfmake/pdfmake.min.js"></script>
<script src="{{asset('backend')}}/plugins/pdfmake/vfs_fonts.js"></script>
<script src="{{asset('backend')}}/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="{{asset('backend')}}/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="{{asset('backend')}}/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<script src="{{asset('backend')}}/plugins/summernote/summernote-bs4.min.js"></script>

<script src="{{ asset('backend') }}/plugins/tagsinput/bootstrap-tagsinput.js"></script>





{{-- inline js --}}


{{-- tags input --}}
<style type="text/css">
  .bootstrap-tagsinput .tag {
    background: #428bca;;
    border: 1px solid rgb(223, 16, 16);
    padding: 1 6px;
    padding-left: 2px;
    margin-right: 2px;
    color: white;
    border-radius: 4px;
  }
  
</style>

<script>
  $(function () {
    // Summernote
    $('.summernote').summernote()

    
  })
</script>

{{-- for sweetalert  --}}
<script>
  $(document).on('click','.delete',function(e){
    e.preventDefault();
    // var link = $(this).attr('href');
    
   
    swal({
          title: "Are you sure?",
          text: "Once deleted, you will not be able to recover this imaginary file!",
          icon: "warning",
          buttons: true,
          dangerMode: true,
    })
    .then((willDelete) => {
          if (willDelete) {
            // swal("Poof! Your imaginary file (has been deleted!", {
            //   icon: "success",
            // });
            // window.location.href=link;
          
           
          //  console.log(document.getElementById('delete').parentElement);
          this.form.submit();
            // $('#deleted_form').submit();
          } 
          else {
            swal("Your imaginary file is safe!");
          }
    });
  });
</script>
{{-- end sweetalret --}}
{{-- for sweetalert  --}}
<script>
  $(document).ready(function(){

    $(document).on('click','#delete_coupon',function(e){
    e.preventDefault();
    var link = $(this).attr('href');
    $("#deleted_form").attr('action',link);  
    swal({
          title: "Are you sure?",
          text: "Once deleted, you will not be able to recover this imaginary file!",
          icon: "warning",
          buttons: true,
          dangerMode: true,
    })
    .then((willDelete) => {
          if (willDelete) {
            // swal("Poof! Your imaginary file (has been deleted!", {
            //   icon: "success",
            // });
            // window.location.href=link;
          
           
          //  console.log(document.getElementById('deleted_form'));
          // this.form.submit();
           $('#deleted_form').submit();
            // console.log("moon");
          } 
          else {
            swal("Your imaginary file is safe!");
          }
    });
  });

  // data passing
  $('#deleted_form').submit(function(e){
    e.preventDefault();
    var url = $(this).attr('action');
    var request = $(this).serialize();
    $.ajax({
      url:url,
      type:'Post',
      async:false,
      data:request,
      success:function(data){
        toastr.success(data);
        $('#deleted_form')[0].reset();
        table.ajax.reload();
      }
    });
    

  });
    
  });

</script>
{{-- end sweetalret --}}
// <script>
//     $(document).ready(function(){
//     $(document).on('click','.deleteYazra',function(e){
//     e.preventDefault();
//     // var link = $(this).attr('href');
    
   
//     swal({
//           title: "Are you sure?",
//           text: "Once deleted, you will not be able to recover this imaginary file!",
//           icon: "warning",
//           buttons: true,
//           dangerMode: true,
//     })
//     .then((willDelete) => {
//           if (willDelete) {
//             // swal("Poof! Your imaginary file (has been deleted!", {
//             //   icon: "success",
//             // });
//             // window.location.href=link;
          
           
//           //  console.log(document.getElementById('delete').parentElement);
//           //  this.form.submit();
//           // console.log(document.getElementById('deleted_form'));
//            $(#deleted_form).submit();
//           } 
//           else {
//             swal("Your imaginary file is safe!");
//           }
//     });
//   });

//   $('#deleted_form').submit(function(e){
//     e.preventDefault();
//     var url = $(this).attr('action');
//     var request = $(this).serialize();
//     $.ajax({
//       url:url,
//       type:'Post',
//       async:false,
//       data:request,
//       success:function(data){
//         $('#deleted_form')[0].reset();
//         table.ajax.reload();
//       }
//     });
    

//   });
    
//   });
// </script>
{{-- end sweetalret --}}

{{-- for dropify --}}

<script>
          $('.dropify').dropify({
    messages: {
        'default': 'Drag and drop',
        'replace': 'Drag and drop or click to replace',
        'remove':  'Remove',
        'error':   'Ooops, something wrong happ
    }
});
</script>
{{-- for dropify --}}

{{-- for logout sweetalert   --}}
<script>
  $(document).on('click','.logout',function(e){
    e.preventDefault();
    var link = $(this).attr('href');
  
    swal({
          title: "Are you sure?",
          text: "You want to log out",
          icon: "warning",
          buttons: true,
          dangerMode: true,
    })
    .then((willDelete) => {
          if (willDelete) {
            // swal("Poof! Your imaginary file (has been deleted!", {
            //   icon: "success",
            // });
             window.location.href=link;
          
           
          
          // this.form.submit();
          } else {
            swal("You are still loged in!");
          }
    });
  })
</script>
{{-- end logout sweetalret --}}

{{-- tostar  --}}
<script>
  @if(Session::has("messege"))
  
   var type ="{{ Session::get('alert-type','info')}}" ;
   
   switch(type){
     case 'info':
         toastr.info("{{Session::get('messege')}}"); 
         break;    
      case 'success':
         toastr.success("{{Session::get('messege')}}"); 
         break;
     case 'warning':
         toastr.warning("{{Session::get('messege')}}");
         break;
     case 'error':
         toastr.error("{{Session::get('messege')}}");
         break;   } 
 @endif
 
 </script>
{{-- end tostar  --}}


{{-- data table  --}}
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
{{-- end of data table  --}}

</body>
</html>
