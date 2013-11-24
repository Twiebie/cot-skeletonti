<!-- BEGIN: MAIN -->
{PHP.cfg.doctype}
<html>
  <head>
    {POPUP_METAS}
    <base href="{PHP.cfg.mainurl}/">
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