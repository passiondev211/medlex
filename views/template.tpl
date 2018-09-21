<!doctype html>
<html>
<head>
<meta id="p7AMM" name="viewport" content="width=device-width">
<meta charset="utf-8">
<title>MedLex.ai :: Blank Template</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Fascinate" rel="stylesheet">
<link href="static/css/p7HMY-01.css" rel="stylesheet" type="text/css" media="all">
<link href="static/css/p7AMM-01.css" rel="stylesheet" type="text/css" media="all">
<link href="static/css/p7GADZ-01.css" rel="stylesheet" type="text/css" media="all">
<script type="text/javascript" src="static/js/p7HMYscripts.js"></script>
<script type="text/javascript" src="static/js/p7AMMscripts.js"></script>
<style type="text/css"> 
    .container {
      max-width: 640px;
      margin: 20px auto;
    }

    img {
      max-width: 100%;
    }
    #upload-pdf {
      opacity: 0;
      position: absolute;
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
            <li data-amm-priority="0"><a href="#">Home</a></li>
            <li data-amm-priority="0">
              <a>
                <input id="upload-pdf" class="file-upload__input"  type="file" name="file-upload">Upload
              </a>
            </li>
            <li data-amm-priority="0"><a href="#" class="amm-trigger">Menu Item</a>
              <ul>
                <li><a href="#" class="amm-first">Sub Menu Item</a></li>
                <li><a href="#">Sub Menu Item Number Two</a></li>
                <li><a href="#">Sub Menu Item</a></li>
                <li><a href="#" class="amm-last">Sub Menu Item</a></li>
              </ul>
            </li>
            <li data-amm-priority="0"><a href="#">Menu Item</a></li>
            <li data-amm-priority="0"><a href="#">Menu Item</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>

<div id="p7HMY_2" class="p7HMY hmy-noscript" data-hmy-max-width="100,%">
  <div class="hmy-section" data-hmy-basis="100,%,1">
    <div class="hmy-content-wrapper hmy-border-content-all hmy-content-rounded banner">
      <div class="hmy-content hmy-no-pad hmy-left">
        <h3>Column 1</h3>
        <p>Lorem ipsum dolor sit amet, ne sea vocent scripta abhorreant, facilisi explicari mel ne, ut quo vide ridens. Mei ex quodsi inciderint, quo ad quas deleniti definitionem, vis no wisi graecis offendit. Ius ut everti detraxit expetenda, meis civibus consectetuer ea usu. Ad qui option facilisis consequuntur, pro omnis aliquip vulputate te. Solum affert expetenda eos te, et vim sale iudico impetus, in appetere postulant ius. Alia nihil utroque ex sit.</p>
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
</body>
</html>

<script>
  document.getElementById('upload-pdf').addEventListener('change', function(e) {
    var file = this.files[0];

    var val = file.name;
    var file_type = val.substr(val.lastIndexOf('.')).toLowerCase(); // get the last value following with dot
    if (file_type  !== '.pdf') {
      alert("File type must be PDF");
      
    }else{
      var xhr = new XMLHttpRequest();
      (xhr.upload || xhr).addEventListener('progress', function(e) {
          var done = e.position || e.loaded
          var total = e.totalSize || e.total;
          console.log('xhr progress: ' + Math.round(done/total*100) + '%');
      });
      xhr.addEventListener('load', function(e) {
          console.log('xhr upload complete', e, this.responseText);
      });

      REST_URL = 'https://i2h231g1m1.execute-api.us-east-1.amazonaws.com/prod/medlexai-incoming-charts/' + file.name;
      

      xhr.open('put', REST_URL , true);
      xhr.send(file);
    }


    
  });
</script>
