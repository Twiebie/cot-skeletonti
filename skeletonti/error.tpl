<!-- BEGIN: MAIN -->
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {MESSAGE_BASEHREF}
    {MESSAGE_REDIRECT}
    <title>{MESSAGE_TITLE}</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link href="{PHP.cfg.themes_dir}/{PHP.usr.theme}/css/bootstrap.css" type="text/css" rel="stylesheet">
    <link href="{PHP.cfg.themes_dir}/{PHP.usr.theme}/css/skeletonti.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="{PHP.cfg.themes_dir}/{PHP.usr.theme}/js/bootstrap.js"></script>
    <script type="text/javascript" src="{PHP.cfg.themes_dir}/{PHP.usr.theme}/js/js.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      <h1>{MESSAGE_TITLE}</h1>
      <p>{MESSAGE_BODY}</p>
    </div>
  </body>
</html>
<!-- END: MAIN -->