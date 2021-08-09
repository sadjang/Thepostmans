<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="TEMPLATE/assets/img/apple-icon.png">
  <link rel="icon" type="TEMPLATE/assets/image/png" href="TEMPLATE/assets/img/favicon.png">
  <link rel="shortcut icon" href="TEMPLATE/assets/img/img/relatedposts/arintech.jpg" type="image/x-icon" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    WinTime
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
   <!-- CSS Files -->
  <link type="text/css" href="TEMPLATE/assets/myimg/mycss.css"   rel="stylesheet" />
  <link href="TEMPLATE/assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="TEMPLATE/assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="off-canvas-sidebar">
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top text-white">
    <div class="container">
      <div class="navbar-wrapper">
          <p style="color:#0000FF;">Win</p><p  style="color:#B22222;">Time</p>
         
      </div>
     
      <div class="collapse navbar-collapse justify-content-end">
        <ul class="navbar-nav">
         
         
          <li class="nav-item  active ">
            <a href="#" class="nav-link">
              <img class="imf" src="TEMPLATE/assets/myimg/fingerprint.png"><fmt:message key="login" /> 
            </a>
          </li>
          <li class="nav-item ">
            <a href="#" class="nav-link">
              <img class="imf" src="TEMPLATE/assets/myimg/lock-white.png"><fmt:message key="lock" /> 
            </a>
          </li>
        </ul>
      </div>
            
      
            
    </div>
  </nav>
  <!-- End Navbar -->
  <div class="wrapper wrapper-full-page">
      <C:choose>
            <C:when test="${page=='1'}">
                 <div class="page-header login-page header-filter" filter-color="black" style="background-image: url('TEMPLATE/assets/img/img/relatedposts/ui-sam.jpeg'); background-size: cover; background-position:  center;">
  
            </C:when>   
            <C:when test="${page=='2'}">
                 <div class="page-header login-page header-filter" filter-color="black" style="background-image: url('TEMPLATE/assets/img/img/relatedposts/minpostel.jpg'); background-size: cover; background-position:  center;">
  
            </C:when> 
             <C:when test="${page=='3'}">
                 <div class="page-header login-page header-filter" filter-color="black" style="background-image: url('TEMPLATE/assets/img/img/relatedposts/antic.jpg'); background-size: cover; background-position:  center;">
  
            </C:when>          
             <C:when test="${page=='4'}">
                 <div class="page-header login-page header-filter" filter-color="black" style="background-image: url('TEMPLATE/assets/img/img/relatedposts/arintech.jpg'); background-size: cover; background-position:  center;">
  
            </C:when>          
           
      </C:choose>
       <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-8 ml-auto mr-auto">
            <form class="form" method="" action="">
              <div class="card card-login card-hidden">
                <div class="card-header card-header-rose text-center">
                  <h4 class="card-title"><fmt:message key="login" /></h4>
                  <div class="social-line">
                    <a href="#pablo" class="btn btn-just-icon btn-link btn-white">
                      <i class="fa fa-facebook-square"></i>
                    </a>
                    <a href="#pablo" class="btn btn-just-icon btn-link btn-white">
                      <i class="fa fa-twitter"></i>
                    </a>
                    <a href="#pablo" class="btn btn-just-icon btn-link btn-white">
                      <i class="fa fa-google-plus"></i>
                    </a>
                  </div>
                </div>
                <div class="card-body ">
                  <p class="card-description text-center" id="messages"><fmt:message key="loginclassi" /></p>
                  <span class="bmd-form-group">
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                          <img class="imf" src="TEMPLATE/assets/myimg/face.png">
                        </span>
                      </div>
                      <input type="text" class="form-control" placeholder="<fmt:message key="loginpointe" />" required="" id="login">
                      <p id="login_ve"> </p> 
                    </div>
                  </span>
                  
                  <span class="bmd-form-group">
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                          <img class="imf" src="TEMPLATE/assets/myimg/lock.png">
                        </span>
                      </div>
                      <input type="password" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  placeholder="<fmt:message key="passwoirdpointe" />" id="password">
                     <p id="password_ve"> </p> 
                    </div>
                  </span>
                </div>
                <div class="card-footer justify-content-center">
                  <a  class="btn btn-rose btn-link btn-lg" id="submit"><fmt:message key="letgo" /></a>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
      <footer class="footer">
        <div class="container">
         
           <%@include file="copyrigth.jsp" %> 
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
    <script src="TEMPLATE/assets/js/core/jquery.min.js"></script>
  <script src="TEMPLATE/assets/js/core/popper.min.js"></script>
  <script src="TEMPLATE/assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="TEMPLATE/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  
  <!-- Chartist JS -->
  <script src="TEMPLATE/assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="TEMPLATE/assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="TEMPLATE/assets/js/material-dashboard.js?v=2.1.0" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="TEMPLATE/assets/demo/demo.js"></script>
   
  
     
        <script src = "TEMPLATE/jquery.il8n/CLDRPluralRuleParser.js " > </script>
        <script  src = "TEMPLATE/jquery.il8n/jquery.i18n.js " > </script>
        <script  src = "TEMPLATE/jquery.il8n/jquery.i18n.messagestore.js " > </script>
        <script  src = "TEMPLATE/jquery.il8n/jquery.i18n.fallbacks.js " > </script>
        <script  src = "TEMPLATE/jquery.il8n/jquery.i18n.language.js " > </script>
        <script  src = "TEMPLATE/jquery.il8n/jquery.i18n.parser.js " > </script>
        <script  src = "TEMPLATE/jquery.il8n/jquery.i18n.emitter.js " > </script>
        <script  src = "TEMPLATE/jquery.il8n/jquery.i18n.emitter.bidi.js " > </script>
        <script  src = "TEMPLATE/jquery.il8n/global.js " > </script>
  
  <script>
      
      var boologin=false;
           var boolpassword=false;
           
           
           
           
        $(function(){
               // definition langue
               var language="${language}";
               var lan=language.split("_")[0];
               Global.staticProperty = lan;
              /////////
            
                $("#login").focusout(function(){
                    var logi=  $('#login').val();
                   valideloging(logi);
                 });
                 
                $("#password").focusout(function(){
                    var password=  $('#password').val();
                    validePassword(password);
               
                 });
                  $("#password").focusin(function(){
                      $('#password_ve').hide();
                   });
                  $("#login").focusin(function(){
                      $('#login_ve').hide();
                 });
                 
               
              $(document).keypress(function (e) {
                    var key = e.which;
                    if(key == 13)  // the enter key code
                     {
                        pRESkEY();
                       return false;  
                     }
           });  
                 
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
            function valideloging(logi){
            boologin=Loginfonction(logi);
             if(boologin==false){
                   if(logi.length>0){
                        $('#login_ve').html("login don't match");
                         $('#login_ve').show();   
                    }else{
                        
                         $('#login_ve').html("login is empty");
                         $('#login_ve').show(); 
                       
                    }
                 
                 
                 
                 
                 
                 
               
              }
          }
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          function validePassword(password){
              boolpassword=checkPasswor(password);
             
               if(boolpassword==false){
                   
                   if(password.length>0){
                        $('#password_ve').html("passwor don't match");
                         $('#password_ve').show(); 
                    }else{
                    	
                    	  $('#password_ve').html("passwor is empty");
                          $('#password_ve').show(); 
                        
                       
                    }
                   
                   
                   
                  
               }
          }
             function pRESkEY() {
             var password=  $('#password').val();
             var login=  $('#login').val();
             var page="${page}";
            
             valideloging(login);
             validePassword(password);
             if (boologin&&boolpassword){
                 
               $.ajax({
                 method: "POST",
                 url: "login",
                    data: { login: login,password: password,page: page},
                    success: function (response) { 
                      if(response=="ok" ){
                         window.open("main");
                          window.opener = self;
                          window.close();
                          
                          $('#password').val("");
                           $('#login').val("");
                          
                      }else{
                         $('#messages').html(response); 
                         $('#messages').css({ 'color': 'red', 'font-size': '150%' });
                      }
                 },
                 error: function (response) { 
                    $('#messages').html(response); 
                 }
                 
             });  
                 
                 
                 
           
           
          
           
           
           
           
           
           
           
           
           
           
           
           
               
              }   
        }
           
           
           
           function checkPasswor(phoneNo) {
           // var phoneRE = /^\(\d\d\d\) \d\d\d-\d\d\d\d$/; 
            var phoneRE = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/;
            if (phoneNo.match(phoneRE)) {
              return true; 
            } else {
            //  alert( "The phone number entered is invalid!" );
              return false;
            }
          } 
          function Loginfonction(login){
              if(login.length<2||login.length>20){
                  return false;
              }else{
                  return true;
              }
          }
         
         
              
              
              
              
            $("#submit").click(function(){
                pRESkEY();
            });       
                 
     });  
         
             
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   /*   
    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');

        $sidebar_img_container = $sidebar.find('.sidebar-background');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

        if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
          if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
            $('.fixed-plugin .dropdown').addClass('open');
          }

        }

        $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('background-color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });

        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');


          var new_image = $(this).find("img").attr('src');

          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
        });

        $('.switch-sidebar-image input').change(function() {
          $full_page_background = $('.full-page-background');

          $input = $(this);

          if ($input.is(':checked')) {
            if ($sidebar_img_container.length != 0) {
              $sidebar_img_container.fadeIn('fast');
              $sidebar.attr('data-image', '#');
            }

            if ($full_page_background.length != 0) {
              $full_page_background.fadeIn('fast');
              $full_page.attr('data-image', '#');
            }

            background_image = true;
          } else {
            if ($sidebar_img_container.length != 0) {
              $sidebar.removeAttr('data-image');
              $sidebar_img_container.fadeOut('fast');
            }

            if ($full_page_background.length != 0) {
              $full_page.removeAttr('data-image', '#');
              $full_page_background.fadeOut('fast');
            }

            background_image = false;
          }
        });

        $('.switch-sidebar-mini input').change(function() {
          $body = $('body');

          $input = $(this);

          if (md.misc.sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            md.misc.sidebar_mini_active = false;

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

          } else {

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

            setTimeout(function() {
              $('body').addClass('sidebar-mini');

              md.misc.sidebar_mini_active = true;
            }, 300);
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);

        });
      });
    });*/
  </script>
  <script>
    $(document).ready(function() {
      md.checkFullPageBackgroundImage();
      setTimeout(function() {
        // after 1000 ms we add the class animated to the login/register card
        $('.card').removeClass('card-hidden');
      }, 700);
    });
  </script>
</body>

</html>