<!doctype html>
<html>
<head>
<meta id="p7AMM" name="viewport" content="width=device-width">
<meta charset="utf-8">
<title>MedLex.ai :: Patients Index</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Fascinate" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/p7HMY-01.css" rel="stylesheet" type="text/css" media="all">
<link href="css/p7GADZ-01.css" rel="stylesheet" type="text/css" media="all">
<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
<link href="css/dataTables_custom.css" rel="stylesheet" type="text/css" >
<script src="js/p7HMYscripts.js"></script>
<script src="js/p7AMMscripts.js"></script>
<script src="js/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script>
      /* Formatting function for row details - modify as you need */
    function format ( d ) {
        // `d` is the original data object for the row
        return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
            '<tr>'+
                '<td>' + d.last + '_Chart_1' + '</td>' +
  		  	  '<td>And any further details here (images etc)...</td>'+
            '</tr>'+
            '<tr>'+
  		  	  '<td>' + d.last + '_Chart_2' + '</td>' +
                '<td>And any further details here (images etc)...</td>'+
            '</tr>'+
            '<tr>'+
                '<td>' + d.last + '_Chart_3' + '</td>' +
                '<td>And any further details here (images etc)...</td>'+
            '</tr>'+
        '</table>';
    }
    $(document).ready(function() {
        var table = $('#example').DataTable( {
            "ajax": "testdata/objects.txt",
            "columns": [
                {
                    "className":      'details-control',
                    "orderable":      false,
                    "data":           null,
                    "defaultContent": ''
                },
                { "data": "id" },
                { "data": "last" },
                { "data": "first" },
                { "data": "date_of_birth" },
                { "data": "case_name"},
                {   
                  "orderable": false,
                  "data": null,
                  "defaultContent": ' <a href="#"><i class="fa fa-edit"></i></a>'             
                },
                {
                  "orderable": false,
                  "data": null,
                  "defaultContent": ' <a href="#"><i class="fa fa-trash"></i></a>'
                }
            ],
            "order": [[1, 'asc']]
        } );
         
        // Add event listener for opening and closing details
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
        
        $('#example').on( 'click', 'tbody tr td:nth-child(n+2):nth-child(-n+7)', function () {
          var id = $(this).context.parentNode.childNodes[1].innerText;
          window.location.href = "http://devel.medlex.ai:8080/patient/" + id;
        });
      
    } );
</script>
<link href="css/p7AMM-01.css" rel="stylesheet" type="text/css" media="all">
</head>
<body>

<div id="p7HMY_1" class="p7HMY hmy-color-root-black hmy-noscript navigation" data-hmy-max-width="100,%">
  <div class="hmy-section logo" data-hmy-basis="20,%,1">
    <div class="hmy-content-wrapper hmy-vertical-center">
      <div class="hmy-content hmy-center">
        <p><img src="img/logo.png" width="100" height="96" alt=""></p>
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
<h1 class="align-center">SamplePractice Patients</h1>
<div id="p7HMY_2" class="p7HMY hmy-noscript" data-hmy-max-width="90,%">
  <div class="hmy-section" data-hmy-basis="100,%,1">
    <div class="hmy-content-wrapper hmy-border-content-all hmy-content-rounded banner">
      <div class="hmy-content hmy-no-pad hmy-left" id="table-padding">
        <table id="example" class="display" style="width:100%">
            <thead>
                <tr>
					          <th><i class="fa fa-clipboard align-center"></i></th>
                    <th>ID</th>
                    <th>Last</th>
                    <th>First</th>
                    <th>Date of Birth</th>
                    <th>Case Name</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
					          <th><i class="fa fa-clipboard align-center"></i></th>
                    <th>ID</th>
                    <th>Last</th>
                    <th>First</th>
                    <th>Date Of Birth</th>
                    <th>Case Name</th>
                    <th>Edit</th>
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
          <li><img src="img/facebook.png" width="48" height="48" alt="Facebook"></li>
          <li><img src="img/googleplus.png" width="48" height="48" alt="Google Plus"></li>
          <li><img src="img/instagram.png" width="48" height="48" alt="Instagram"></li>
          <li><img src="img/digg.png" width="48" height="48" alt="Digg"></li>
          <li><img src="img/pinterest.png" width="48" height="48" alt="Pinterest"></li>
          <li><img src="img/twitter.png" width="48" height="48" alt="Twitter"></li>
          <li><img src="img/linkedin.png" width="48" height="48" alt="Linked In"></li>
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
</body>
</html>
