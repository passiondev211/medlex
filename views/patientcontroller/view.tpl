<!doctype html>
<html>
<head>
<meta id="p7AMM" name="viewport" content="width=device-width">
<meta charset="utf-8">
<title>MedLex.ai :: Patient Information</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Fascinate" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="static/css/p7HMY-01.css" rel="stylesheet" type="text/css" media="all">
<link href="static/css/p7GADZ-01.css" rel="stylesheet" type="text/css" media="all">
<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
<link href="static/css/dataTables_custom.css" rel="stylesheet" type="text/css" >
<script src="static/js/p7HMYscripts.js"></script>
<script src="static/js/p7AMMscripts.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="static/css/p7AMM-01.css" rel="stylesheet" type="text/css" media="all">
<link href="static/css/stop-all-animation.css" rel="stylesheet" type="text/css" media="all">
<style type="text/css">
  .fa-trash:hover {
    color: #dc3545;
  }
</style>
</head>
<body>

<div id="p7HMY_1" class="p7HMY hmy-color-root-black hmy-noscript navigation" data-hmy-max-width="100,%">
  <div class="hmy-section logo" data-hmy-basis="20,%,1">
    <div class="hmy-content-wrapper hmy-vertical-center">
      <div class="hmy-content hmy-center">
        <p><img src="static/img/logo.png" width="100" height="96" alt=""></p>
      </div>
    </div>
  </div>
  <div class="hmy-section" data-hmy-basis="80,%,1">
    <div class="hmy-content-wrapper hmy-vertical-center">
      <div class="hmy-content hmy-left">
        <div id="p7AMM_1" class="p7AMM amm-noscript amm-responsive amm-rootlinks-gray amm-rootlink-borders amm-rootlinks-rounded amm-subs-black amm-subs-trans amm-subs-rounded amm-right gadzooks" data-amm="600,5,900,5,-10,0,1,0,0,5,1,1,1,1,0" data-amm-label="More...">
          <div id="p7AMMtb_1" class="amm-toolbar closed amm-toggle-text"><a title="Hide/Show Menu" href="#">&equiv;</a></div>
          <ul class="closed" aria-label="Navigation Menu">
            <li data-amm-priority="0"><a href="#">Create Patient</a></li>
            <li data-amm-priority="0"><a href="#">Recycle Bin</a></li>
            <li data-amm-priority="0"><a href="#">Logoff</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<p></p>
<div id="p7HMY_2" class="p7HMY hmy-noscript" data-hmy-max-width="90,%">
  <div class="hmy-section" data-hmy-basis="100,%,1">
    <div class="hmy-content-wrapper hmy-border-content-all hmy-content-rounded banner">
      <div class="hmy-content hmy-no-pad hmy-left" id="table-padding">
      	
      	<div>
	      	<div class="row">
	      		<div class="col-12">
	      			<h1>Patient Information 
                <span class="float-right">
                  <a  id="patient-info-edit-btn" class="btn btn-success mr-1 text-white">Edit</a>
                  <a  class="btn btn-dark float-right"><i class="fa fa-trash text-white"></i></a>
                </span>
              </h1>
	      		</div>
	      	</div>

	       <form>
	      		<div class="row">			  
  					  <div class="form-group col-sm-4 col-md-2">
  					  	<label for="id">ID</label>
  					    <input type="text" name="" class="form-control" placeholder="id" disabled required>
  					  </div>
  					  
  					  <div class="form-group col-sm-4 col-md-2">
  					  	<label for="lastname">Lastname</label>
  					    <input type="text" class="form-control" placeholder="lastname" disabled required>
  					  </div>
  					  
  					  <div class="form-group col-sm-4 col-md-2">
  					  	<label for="firstname">Firstname</label>
  					  	<input type="text" name="firstname" class="form-control" placeholder="firstname" disabled required>
  					  </div>

  					  <div class="form-group col-sm-4 col-md-2">
  					  	<label for="middlename">Middlename</label>
  					  	<input type="text" name="" class="form-control" placeholder="middlename" disabled required>
  					  </div>

  					  <div class="form-group col-sm-4 col-md-2">
  					  	<label for="dob">DOD</label>
  					  	<input type="text" name="" class="form-control" placeholder="dob" disabled required>
  					  </div>

  					  <div class="form-group col-md-4">
  					  	<label for="casename">Casename</label>
  					  	<input type="text" class="form-control" placeholder="casename" disabled required>
  					  </div>		
				    </div>

  				  <div class="row">
  				  	 <div class="form-group col-md-12">
  					  	<button  style="display: none;" id="patient-info-update-submit-btn" class="btn btn-primary float-right">Submit</button>
  					   </div>
  				  </div>

<!--             <div style="display: none;" class="alert alert-success alert-dismissible fade show" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
              <strong>Successfully updated patient information</strong>
            </div> -->

			   </form>

      	</div>
		
		    <hr>
        
        <table id="example" class="display" style="width:100%">
            <thead>
                <tr>
					<th><i class="fa fa-file align-center"></i></th>
                    <th>ID</th>
                    <th>Chart Name</th>
                    <th>First Encounter</th>
                    <th>Uploaded</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
					<th><i class="fa fa-file align-center"></i></th>
                  	<th>ID</th>
                    <th>Chart Name</th>
                    <th>First Encounter</th>
                    <th>Uploaded</th>
                    <th>Delete</th>
                </tr>
            </tfoot>
        </table>
      </div>
    </div>
  </div>
  <div class="hmy-section" data-hmy-basis="100,%,1">
    <div class="hmy-content-wrapper"> </div>
  </div>
</div>

<div id="p7HMY_3" class="p7HMY hmy-noscript" data-hmy-max-width="100,%">
  <div class="hmy-section" data-hmy-basis="100,%,1">
    <div class="hmy-content-wrapper">
      <div class="hmy-content hmy-center">
        <h2>Social Media</h2>
        <ul class="social-icons">
          <li><img src="static/img/facebook.png" width="48" height="48" alt="Facebook"></li>
          <li><img src="static/img/googleplus.png" width="48" height="48" alt="Google Plus"></li>
          <li><img src="static/img/instagram.png" width="48" height="48" alt="Instagram"></li>
          <li><img src="static/img/digg.png" width="48" height="48" alt="Digg"></li>
          <li><img src="static/img/pinterest.png" width="48" height="48" alt="Pinterest"></li>
          <li><img src="static/img/twitter.png" width="48" height="48" alt="Twitter"></li>
          <li><img src="static/img/linkedin.png" width="48" height="48" alt="Linked In"></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="hmy-section" data-hmy-basis="100,%,1">
    <div class="hmy-content-wrapper footer">
      <div class="hmy-content hmy-no-pad hmy-left">
        <div class="footer">
          <p>&copy;2018 MedLex.ai :: All Rights Reserved</p>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="static/js/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script>
    function format ( d ) {
        // `d` is the original data object for the row
        return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
            '<tr>'+
                '<td>' + d.last + '_page1' + '</td>' +
  		  	   '<td>Encourter: ' + d.date_of_birth + '  Uploaded:  ' + d.date_of_birth + '(images etc)...</td>'+
            '</tr>'+
            '<tr>'+
  		  	  '<td>' + d.last + '_page_2' + '</td>' +
              '<td>Encourter: ' + d.date_of_birth + '  Uploaded:  ' + d.date_of_birth + '(images etc)...</td>'+
            '</tr>'+
            '<tr>'+
                '<td>' + d.last + '_page_3' + '</td>' +
                '<td>Encourter: ' + d.date_of_birth + '  Uploaded:  ' + d.date_of_birth + '(images etc)...</td>'+
            '</tr>'+
        '</table>';
    }
    $(document).ready(function() {
        var table = $('#example').DataTable( {
            "ajax": "static/testdata/objects.txt",
            "columns": [
                {
                    "className":      'details-control',
                    "orderable":      false,
                    "data":           null,
                    "defaultContent": ''
                },
                { "data": "id" },
                { "data": "last" },
                { "data": "date_of_birth" },
                { "data": "date_of_birth" },
                {
                  "orderable": false,
                  "data": null,
                  "defaultContent": ' <a href="#"><i class="fa fa-trash"></i></a>'
                }
            ],
            "order": [[1, 'asc']]
        } );
         
        // Add event listener for opening and closing detailsni
        $('#example tbody').on('click', 'td.details-control', function () {
            var tr = $(this).closest('tr');
            var row = table.row( tr );
     
            if ( row.child.isShown() ) {
                // This row is already open - close it
                row.child.hide();
                tr.removeClass('shown');
            }
            else {
                // Open this row
                row.child( format(row.data()) ).show();
                tr.addClass('shown');
            }
        } );
        
        // $('#example').on( 'click', 'tbody tr td:nth-child(n+2):nth-child(-n+7)', function () {
        //   var id = $(this).context.parentNode.childNodes[1].innerText;
        //   window.location.href = "http://devel.medlex.ai:8080/patient/" + id;
        // });
      
    } );

     $('#patient-info-edit-btn').click(function(){
      $('#patient-info-update-submit-btn').toggle();
      $( "form input" ).prop('disabled', function(i, v) { return !v; });
     });
     
     // $("#patient-info-update-submit-btn").click(function(){
     //    $('.alert-success').show();
     // });

</script>
</body>
</html>

