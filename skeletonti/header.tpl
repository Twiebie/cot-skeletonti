<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- IF {HEADER_META_DESCRIPTION} --><meta name="description" content="{HEADER_META_DESCRIPTION}"><!-- ENDIF -->
    <!-- IF {HEADER_META_KEYWORDS} --><meta name="keywords" content="{HEADER_META_KEYWORDS}"><!-- ENDIF -->
    {HEADER_BASEHREF}
    <link rel="canonical" href="{HEADER_CANONICAL_URL}">
    <title>{HEADER_TITLE}</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    {HEADER_HEAD}
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <nav class="navbar navbar-default navbar-static-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="{PHP.cfg.mainurl}" title="{PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}">{PHP.cfg.maintitle}</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="<!-- IF {PHP.m} == 'index' OR {PHP.env.ext} == 'index' -->active<!-- ENDIF -->">
              <a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a>
            </li>
            <li class="<!-- IF {PHP.m} == 'contact' OR {PHP.env.ext} == 'contact' -->active<!-- ENDIF -->">
              <a href="{PHP|cot_url('contact')}">{PHP.L.Contact}</a>
            </li>
            <li class="<!-- IF {PHP.m} == 'page' OR {PHP.env.ext} == 'page' -->active<!-- ENDIF -->">
              <a href="{PHP|cot_url('page', 'c=news')}">{PHP.L.News}</a>
            </li>
            <li class="<!-- IF {PHP.m} == 'forums' OR {PHP.env.ext} == 'forums' -->active<!-- ENDIF -->">
              <a href="{PHP|cot_url('forums')}">{PHP.L.Forums}</a>
            </li>
            <li class="<!-- IF {PHP.m} == 'users' OR {PHP.env.ext} == 'users' -->active<!-- ENDIF -->">
              <a href="{PHP|cot_url('users')}">{PHP.L.Users}</a>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <!-- IF {PHP.usr.id} > 0 -->{HEADER_USER_NAME}<!-- ELSE -->{PHP.L.Login}<!-- ENDIF --> <b class="caret"></b>
              </a>
              <!-- BEGIN: USER -->
              <ul class="dropdown-menu">
                <!-- IF {HEADER_NOTICES} --><li>{HEADER_NOTICES}</li><!-- ENDIF -->
                <!-- IF {PHP.usr.isadmin} --><li><a href="{PHP|cot_url('admin', '', '', 0, 1)}">{PHP.L.Administration}</a></li><!-- ENDIF -->
                <li><a href="{PHP|cot_url('users', 'm=profile')}">{PHP.L.Profile}</a></li>
                <li><a href="{PHP|cot_url('pm')}">{PHP.L.Private_Messages}</a></li>
                <li><a href="{PHP|cot_url('pfs')}">{PHP.L.PFS}</a></li>
                <li class="divider"></li>
                <li><a href="{PHP.sys.xk|cot_url('login', 'out=1&amp;x=$this', '', 0, 1)}">{PHP.L.Logout}</a></li>
              </ul>
              <!-- END: USER -->
              <!-- BEGIN: GUEST -->
              <ul class="dropdown-menu">
                <li class="form-login">
                  <form action="{PHP|cot_url('login', 'a=check', '', 0, 1)}" method="post" role="form">
                    <div class="form-group">
                      <input class="form-control" type="text" name="rusername" maxlength="32" placeholder="{PHP.L.Username}">
                    </div>
                    <div class="form-group">
                      <input class="form-control" type="password" name="rpassword" maxlength="32" placeholder="{PHP.L.Password}">
                    </div>
                    <input type="hidden" name="rremember" value="1">
                    <button type="submit" class="btn btn-primary">{PHP.L.Login}</button>
                  </form>
                </li>
                <li><a href="{PHP|cot_url('users', 'm=register')}">{PHP.L.Register}</a></li>
                <li><a href="{PHP|cot_url('users', 'm=passrecover')}">{PHP.L.users_lostpass}</a></li>
              </ul>
              <!-- END: GUEST -->
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="container">
<!-- END: HEADER -->
