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
    <link href="{PHP.cfg.themes_dir}/{PHP.usr.theme}/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="{PHP.cfg.themes_dir}/{PHP.usr.theme}/css/{PHP.usr.theme}.css" type="text/css" rel="stylesheet">
  </head>
  <body>
    <div class="container errortpl">
      <div class="jumbotron">
        <h1>{MESSAGE_TITLE}</h1>
        <p>{MESSAGE_BODY}</p>
      </div>
    </div>
  </body>
</html>
<!-- END: MAIN -->
