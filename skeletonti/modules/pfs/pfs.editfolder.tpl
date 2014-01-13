<!-- BEGIN: MAIN -->
<!-- BEGIN: STANDALONE_HEADER -->
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="{PHP.cfg.mainurl}/">
    <title>{PHP.L.pfs_title} - {PHP.cfg.maintitle}</title>
    {PFS_HEAD}
    <script>
      //<![CDATA[
      {PFS_HEADER_JAVASCRIPT}
      //]]>
    </script>
    <link href="{PHP.themes_dir}/{PHP.usr.theme}/css/{PHP.scheme}.css" type="text/css" rel="stylesheet">
  </head>
  <body>
  <!-- END: STANDALONE_HEADER -->
    <div class="page-header">
      <h1>{PFS_TITLE}</h1>
      <p>{PFS_SUBTITLE}</p>
    </div>
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    <form id="editfolder" action="{PFS_ACTION}" method="post" role="form">
      <div class="form-group">
        <label>{PHP.L.Date}</label>
        <p>{PFF_DATE}</p>
      </div>
      <div class="form-group">
        <label>{PHP.L.Updated}</label>
        <p>{PFF_UPDATED}</p>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label>{PHP.L.Folder}</label>
            {PFF_TITLE}
          </div>
          <div class="form-group">
            <label>{PHP.L.Description}</label>
            {PFF_DESC}
          </div>
        </div>
      </div>
      <div class="form-group">
        <label>{PHP.L.pfs_ispublic}</label>
        <p>{PFF_ISPUBLIC}</p>
      </div>
      <div class="form-group">
        <label>{PHP.L.pfs_isgallery}</label>
        <p>{PFF_ISGALLERY}</p>
      </div>
      <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
    </form>
  <!-- BEGIN: STANDALONE_FOOTER -->
  </body>
</html>
<!-- END: STANDALONE_FOOTER -->
<!-- END: MAIN -->
