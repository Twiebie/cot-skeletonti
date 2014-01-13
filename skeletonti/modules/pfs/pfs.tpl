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
      <h1>{PFS_TITLE} {PFS_PATH}</h1>
      <!-- IF {PFS_SUBTITLE} --><p>{PFS_SUBTITLE}</p><!-- ENDIF -->
    </div>

    <!-- BEGIN: PFS_ERRORS -->
    <ul class="list-unstyled">
      <!-- BEGIN: PFS_ERRORS_ROW -->
      <li>{PFS_ERRORS_ROW_MSG}</li>
      <!-- END: PFS_ERRORS_ROW -->
    </ul>
    <!-- END: PFS_ERRORS -->

    <!-- IF {PFF_FOLDERCOUNT_TITLE} OR {PFF_FILESCOUNT_TITLE} -->
    <h4>{PFF_FOLDERCOUNT_TITLE} / {PFF_FILESCOUNT_TITLE}</h4>
    <!-- ENDIF -->
    <!-- IF {PFF_ONPAGE_FOLDERS_TITLE} -->
    <p>({PHP.L.pfs_onpage}: {PFF_ONPAGE_FOLDERS_TITLE} / {PFF_ONPAGE_FILES_TITLE})</p>
    <!-- ENDIF -->
    <table class="table">
      <thead>
        <th>&nbsp;</th>
        <th>{PHP.L.Folder} / {PHP.L.Gallery}</th>
        <th>{PHP.L.Public}</th>
        <th>{PHP.L.Files}</th>
        <th>{PHP.L.Size}</th>
        <th>{PHP.L.Updated}</th>
        <th>{PHP.L.Action}</th>
      </thead>
      <tbody>
        <!-- BEGIN: PFF_ROW -->
        <tr>
          <td class="middle">
            <center><a href="{PFF_ROW_URL}">{PFF_ROW_ICON}</a></center>
          </td>
          <td>
            <a href="{PFF_ROW_URL}">{PFF_ROW_TITLE}</a>
            <p class="text-muted">{PFF_ROW_DESC}</p>
          </td>
          <td>{PFF_ROW_ISPUBLIC}</td>
          <td>{PFF_ROW_FCOUNT}</td>
          <td>{PFF_ROW_FSIZE}</td>
          <td>{PFF_ROW_UPDATED}</td>
          <td>
            <div class="btn-group">
              <a href="{PFF_ROW_EDIT_URL}" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-edit"></span> {PHP.L.Edit}</a>
              <a href="{PFF_ROW_DELETE_URL}" class="btn btn-sm btn-danger"><span class="glyphicon glyphicon-remove-circle"></span></a>
            </div>
          </td>
        </tr>
        <!-- END: PFF_ROW -->
      </tbody>
    </table>

    <!-- IF {PFF_PAGING_CURRENT} -->
    <ul class="pagination">{PFF_PAGING_PREV}{PFF_PAGING_CURRENT}{PFF_PAGING_NEXT}</p>
    <!-- ENDIF -->

    <!-- IF {PFS_FILESCOUNT_TITLE} -->
    <h4>{PFS_INTHISFOLDER}: {PFS_FILESCOUNT_TITLE}</h4>
    <!-- ENDIF -->
    <!-- IF {PFS_ONPAGE_FILES_TITLE} -->
    <p>({PHP.L.pfs_onpage}: {PFS_ONPAGE_FILES_TITLE}) {PFS_SHOWTHUMBS}</p>
    <!-- ENDIF -->
    <table class="table">
      <thead>
        <th>&nbsp;</th>
        <th>{PHP.L.File}</th>
        <th>{PHP.L.Hits}</th>
        <th>{PHP.L.Size}</th>
        <th>{PHP.L.Date}</th>
        <th>{PHP.L.Action}</th>
      </thead>
      <tbody>
        <!-- BEGIN: PFS_ROW -->
        <tr>
          <td class="middle">
            <center>{PFS_ROW_ICON}</center>
          </td>
          <td>
            <h4><a href="{PFS_ROW_FILE_URL}">{PFS_ROW_FILE}</a></h4>
            <p class="text-muted">{PFS_ROW_TYPE} / {PFS_ROW_DESC}</p>
          </td>
          <td>{PFS_ROW_COUNT}</td>
          <td>{PFS_ROW_SIZE}</td>
          <td>{PFS_ROW_DATE}</td>
          <td>
            <input type="checkbox" name="folderid[{PFS_ROW_ID}]">
            <div class="btn-group">
              {PFS_ROW_INSERT}
              <a href="{PFS_ROW_EDIT_URL}" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-edit"></span> {PHP.L.Edit}</a>
              <a href="{PFS_ROW_DELETE_URL}" class="btn btn-sm btn-danger"><span class="glyphicon glyphicon-remove-circle"></span></a>
            </div>
          </td>
        </tr>
        <!-- END: PFS_ROW -->
      </tbody>
    </table>

    <!-- IF {PFS_PAGING_CURRENT} -->
    <ul class="pagination">{PFS_PAGING_PREV}{PFS_PAGING_CURRENT}{PFS_PAGING_NEXT}</ul>
    <!-- ENDIF -->

    <div class="panel panel-default">
      <div class="panel-body">
        <p>{PHP.L.pfs_totalsize}: {PFS_TOTALSIZE} {PHP.L.Of} {PFS_MAXTOTAL}</p>
        <div class="progress">
          <div class="progress-bar" role="progressbar" aria-valuenow="{PFS_PERCENTAGE}" aria-valuemin="0" aria-valuemax="100" style="width: {PFS_PERCENTAGE}%;">
            <span>{PFS_PERCENTAGE}%</span>
          </div>
        </div>
        <p>{PHP.L.pfs_maxsize}: {PFS_MAXFILESIZE}</p>
      </div>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">{PHP.L.pfs_newfile}</div>
      <div class="panel-body">
        <!-- BEGIN: PFS_UPLOAD_FORM -->
        <form enctype="multipart/form-data" action="{PFS_UPLOAD_FORM_ACTION}" method="post" role="form">
          <input type="hidden" name="MAX_FILE_SIZE" value="{PFS_UPLOAD_FORM_MAX_SIZE}">
          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <label>{PHP.L.Folder}</label>
                {PFS_UPLOAD_FORM_FOLDERS}
              </div>
            </div>
          </div>
          <!-- BEGIN: PFS_UPLOAD_FORM_ROW -->
          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <label>{PHP.L.Description}</label>
                <div class="input-group">
                  <span class="input-group-addon">{PFS_UPLOAD_FORM_ROW_NUM}</span>
                  <input type="text" name="ndesc[{PFS_UPLOAD_FORM_ROW_ID}]" class="form-control" value="" size="40" maxlength="255">
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>{PHP.L.File}</label>
                <input type="file" name="userfile[{PFS_UPLOAD_FORM_ROW_ID}]" size="24">
              </div>
            </div>
          </div>
          <!-- END: PFS_UPLOAD_FORM_ROW -->
          <button type="submit" class="btn btn-primary">{PHP.L.Upload}</button>
        </form>
        <!-- END: PFS_UPLOAD_FORM -->
      </div>
    </div>

    <!-- BEGIN: PFS_NEWFOLDER_FORM -->
    <div class="panel panel-default">
      <div class="panel-heading">{PHP.L.pfs_newfolder}</div>
      <div class="panel-body">
        <form id="newfolder" action="{NEWFOLDER_FORM_ACTION}" method="post" role="form">
          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <label class="control-label">{PHP.L.Title}</label>
                <input type="text" name="ntitle" class="form-control" value="" size="32" maxlength="64">
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group">
                <label>{PHP.L.Description}</label>
                <input type="text" name="ndesc" class="form-control" value="" size="32" maxlength="255">
              </div>
            </div>
          </div>

          <!-- IF {NEWFOLDER_FORM_INPUT_PARENT} -->
          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <label>{PHP.L.pfs_parentfolder}</label>
                {NEWFOLDER_FORM_INPUT_PARENT}
              </div>
            </div>
          </div>
          <!-- ENDIF -->

          <div class="row">
            <div class="col-md-2">
              <label>{PHP.L.pfs_ispublic}</label>
              <div class="form-group">
                <label class="radio-inline">
                  <input type="radio" name="nispublic" value="1">{PHP.L.Yes}
                </label>
                <label class="radio-inline">
                  <input type="radio" name="nispublic" value="0" checked="checked">{PHP.L.No}
                </label>
              </div>
            </div>
            <div class="col-md-2">
              <label>{PHP.L.pfs_isgallery}</label>
              <div class="form-group">
                <label class="radio-inline">
                  <input type="radio" name="nisgallery" value="1">{PHP.L.Yes}
                </label>
                <label class="radio-inline">
                  <input type="radio" name="nisgallery" value="0" checked="checked">{PHP.L.No}
                </label>
              </div>
            </div>
          </div>
          <input type="submit" class="btn btn-primary" value="{PHP.L.Create}">
        </form>
      </div>
    </div>
    <!-- END: PFS_NEWFOLDER_FORM -->

    <div class="panel-group" id="accordion">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
            <a data-toggle="collapse" href="#pfs-allowed">
              {PHP.L.pfs_extallowed} <span class="caret"></span>
            </a>
          </h4>
        </div>
        <div id="pfs-allowed" class="panel-collapse collapse">
          <div class="panel-body">
            <table class="table table-borderless">
              <!-- BEGIN: ALLOWED_ROW -->
              <tr>
                <td>{ALLOWED_ROW_ICON} {ALLOWED_ROW_EXT}</td>
                <td>{ALLOWED_ROW_DESC}</td>
              </tr>
              <!-- END: ALLOWED_ROW -->
            </table>
          </div>
        </div>
      </div>
    </div>
    <!-- BEGIN: STANDALONE_FOOTER -->
    <div class="panel-body">
      <ul class="list-inline">
        <li>{PHP.R.pfs_icon_pastethumb} {PHP.L.pfs_pastethumb}</li>
        <li>{PHP.R.pfs_icon_pasteimage} {PHP.L.pfs_pasteimage}</li>
        <li>{PHP.R.pfs_icon_pastefile} {PHP.L.pfs_pastefile}</li>
      </ul>
    </div>
  </body>
</html>
<!-- END: STANDALONE_FOOTER -->
<!-- END: MAIN -->
