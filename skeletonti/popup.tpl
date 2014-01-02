<!-- BEGIN: MAIN -->
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="{PHP.cfg.mainurl}/">
    {POPUP_METAS}
    {POPUP_JAVASCRIPT}
    <script>
    //<![CDATA[
    function add(text) {
      insertText(document, "{POPUP_C2}", text);
    }
    //]]>
    </script>
    <link href="{PHP.themes_dir}/{PHP.theme}/css/{PHP.scheme}.css" type="text/css" rel="stylesheet">
  </head>
  <body>
    {POPUP_BODY}
  </body>
</html>
<!-- END: MAIN -->
