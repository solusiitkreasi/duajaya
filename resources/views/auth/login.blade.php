<?php $general_setting = DB::table('general_settings')->find(1); ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{{$general_setting->site_title}}</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <link rel="manifest" href="{{url('manifest.json')}}">
    <link rel="icon" type="image/png" href="{{url('public/logo', $general_setting->site_logo)}}" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="<?php echo asset('vendor/bootstrap/css/bootstrap.min.css') ?>" type="text/css">

    <!-- Google fonts - Roboto -->
    <link rel="preload" href="https://fonts.googleapis.com/css?family=Nunito:400,500,700" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <noscript><link href="https://fonts.googleapis.com/css?family=Nunito:400,500,700" rel="stylesheet"></noscript>

    <!-- theme stylesheet-->
    <link rel="stylesheet" href="<?php echo asset('css/style.default.css') ?>" id="theme-stylesheet" type="text/css">

    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="<?php echo asset('css/custom-'.$general_setting->theme) ?>" type="text/css">
    <link rel="stylesheet" href="<?php echo asset('css/style.min.css') ?>" type="text/css">

    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.js"></script>
  </head>
    <style>
        .password-container{
            width: 400px;
            position: relative;
        }
        .password-container input[type="password"],
        .password-container input[type="text"]{
            width: 100%;
            padding: 12px 36px 12px 12px;
            box-sizing: border-box;
        }
        .fa-eye{
            position: absolute;
            top: 30%;
            right: 2%;
            cursor: pointer;
            color: #7c7676;
        }
        .fa-eye-slash{
            position: absolute;
            top: 30%;
            right: 2%;
            cursor: pointer;
            color: #7c7676;
        }
    </style>
  <body>
    {{-- <div class="login">
      <div class="box-login">
        <div class="login-action">
          <div class="logo">
            <img src="{{ url('public/logo/analytics.png') }}" alt="">
            <h5>SI Inventory & Finance</h5>
          </div>

          <form action="{{ route('login') }}" method="post" id="login-form">
            @csrf
            <div class="action">
              <div class="header-welcome">
                <h2>Welcome to our System</h2>
                <p class="down-title">Please enter your detail</p>
              </div>

              <div class="input-field">
                <p>Username</p>
                <input id="login-username" type="text" name="name" placeholder="Please input username...">
              </div>
              <div class="input-field">
                <p>Password</p>
                <input id="login-password" type="password" name="password" id="" placeholder="Please input password...">
              </div>

              <button class="btn-login">Masuk</button>

              <a href="{{ route('password.request') }}">{{ trans('file.Forgot Password?') }}</a>
            </div>
          </form>
        </div>
        <div class="login-logo">
          <img src="{{ url('public/images/for-login.png') }}" alt="">
        </div>
      </div>
    </div>--}}

    <div class="page login-page login">
      <div class="container">
        <div class="form-outer text-center d-flex align-items-center">
          <div class="form-inner">
            <div class="logo">
                @if($general_setting->site_logo)
                <img src="{{url('public/logo', $general_setting->site_logo)}}" width="110">
                @else
                <span>{{$general_setting->site_title}}</span>
                @endif
            </div>
            @if(session()->has('delete_message'))
            <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('delete_message') }}</div>
            @endif
            <form method="POST" action="{{ route('login') }}" id="login-form">
              @csrf
              <div class="form-group-material">
                <input id="login-username" type="text" name="name" required class="input-material" value="">
                <label for="login-username" class="label-material">{{trans('file.UserName')}}</label>
                @if(session()->has('error'))
                    <p>
                        <strong>{{ session()->get('error') }}</strong>
                    </p>
                @endif
              </div>

              <div class="form-group-material">
                <input id="login-password" type="password" name="password" required class="input-material" value="">
                <!-- <i class="fa fa-eye" onclick="showPass()" id="eye" title="Show Password"></i> -->
                <label for="login-password" class="label-material">{{trans('file.Password')}}</label>
                @if(session()->has('error'))
                    <p>
                        <strong>{{ session()->get('error') }}</strong>
                    </p>
                @endif
              </div>
              <button type="submit" class="btn btn-primary btn-block">{{trans('file.LogIn')}}</button>
            </form>
            <!-- This three button for demo only-->
            <!-- <button type="submit" class="btn btn-success admin-btn">LogIn as Admin</button>
            <button type="submit" class="btn btn-info staff-btn">LogIn as Staff</button>
            <button type="submit" class="btn btn-dark customer-btn">LogIn as Customer</button> -->
            <br><br>
            <a href="{{ route('password.request') }}" class="forgot-pass">{{trans('file.Forgot Password?')}}</a>
            <p>{{trans('file.Do not have an account?')}}</p><a href="{{url('register')}}" class="signup">{{trans('file.Register')}}</a>
          </div>
          <div class="copyrights text-center">
            <p>{{trans('file.Developed By')}} <span class="external">{{$general_setting->developed_by}}</span></p>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>


<script>
    var x;
    var e;
    function showPass() {
        x = document.getElementById("password");
        e = document.getElementById("eye");

        if (x.type === "password") {
            x.type = "text";
            e.classList = "fa fa-eye-slash";
            e.title = "Hidden";
        } else {
            x.type = "password";
            e.classList = "fa fa-eye";
            e.title = "Show Password";
        }
    }

    // if ('serviceWorker' in navigator ) {
    //     window.addEventListener('load', function() {
    //         navigator.serviceWorker.register('/salepro/service-worker.js').then(function(registration) {
    //             // Registration was successful
    //             console.log('ServiceWorker registration successful with scope: ', registration.scope);
    //         }, function(err) {
    //             // registration failed :(
    //             console.log('ServiceWorker registration failed: ', err);
    //         });
    //     });
    // }
</script>
<script type="text/javascript">
    $('.admin-btn').on('click', function(){
        $("input[name='name']").focus().val('admin');
        $("input[name='password']").focus().val('admin');
    });

    $('.staff-btn').on('click', function(){
        $("input[name='name']").focus().val('staff');
        $("input[name='password']").focus().val('staff');
    });

    $('.customer-btn').on('click', function(){
        $("input[name='name']").focus().val('shakalaka');
        $("input[name='password']").focus().val('shakalaka');
    });
    // ------------------------------------------------------- //
    // Material Inputs
    // ------------------------------------------------------ //

    var materialInputs = $('input.input-material');

    // activate labels for prefilled values
    materialInputs.filter(function() { return $(this).val() !== ""; }).siblings('.label-material').addClass('active');

    // move label on focus
    materialInputs.on('focus', function () {
        $(this).siblings('.label-material').addClass('active');
    });

    // remove/keep label on blur
    materialInputs.on('blur', function () {
        $(this).siblings('.label-material').removeClass('active');

        if ($(this).val() !== '') {
            $(this).siblings('.label-material').addClass('active');
        } else {
            $(this).siblings('.label-material').removeClass('active');
        }
    });


</script>
