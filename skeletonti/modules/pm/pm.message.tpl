<!-- BEGIN: MAIN -->
      <!-- BEGIN: BEFORE_AJAX -->
      <div id="ajaxBlock">
      <!-- END: BEFORE_AJAX -->
        <div class="page-header">
          <h3>{PM_PAGETITLE}</h3>
        </div>

        <table class="table table-condensed">
          <tr>
            <td>{PHP.L.Subject}:</td>
            <td>{PM_TITLE}</td>
          </tr>
          <tr>
            <td>{PM_SENT_TYPE}:</td>
            <td>{PM_USER_NAME}</td>
          </tr>
          <tr>
            <td>{PHP.L.Date}:</td>
            <td>{PM_DATE}</td>
          </tr>
          <tr>
            <td>{PHP.L.Message}:</td>
            <td>{PM_TEXT}</td>
          </tr>
          <tr>
            <td>{PHP.L.Action}:</td>
            <td>
              <ul class="nav nav-pills">
                <li class="">{PM_QUOTE}</li>
                <li class="">{PM_EDIT}</li>
                <li>{PM_DELETE}<li>
                <li>{PM_HISTORY}</li>
              </ul>
            </td>
          </tr>
        </table>

        <!-- BEGIN: REPLY -->
        <h4>{PHP.L.pm_replyto}</h4>
        <form action="{PM_FORM_SEND}" method="post" name="newlink" role="form">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label class="control-label">{PHP.L.Subject}</label>
                {PM_FORM_TITLE}
              </div>
            </div>
          </div>
          <div class="form-group">
            {PM_FORM_TEXT}
          </div>
          <div class="checkbox">
            <label>
              <input type="checkbox" name="fromstate" value="3"> {PHP.L.pm_notmovetosentbox}
            </label>
          </div>
          <center><button type="submit" class="btn btn-primary">{PHP.L.Reply}</button></center>
        </form>
        <!-- END: REPLY -->

        <div id="ajaxHistory">
          <!-- BEGIN: HISTORY -->
          <h3>{PHP.L.pm_messagehistory}</h3>
          <table class="table table-striped">
            <!-- BEGIN: PM_ROW -->
            <tr>
              <td class="forum-poster">
                <h4>{PM_ROW_USER_NAME}</h4>
                <span class="text-muted">{PM_ROW_DATE}</span>
              </td>
              <td><p>{PM_ROW_TEXT}</p></td>
            </tr>
            <!-- END: PM_ROW -->
            <!-- BEGIN: PM_ROW_EMPTY -->
            <tr>
              <td colspan="2"><strong>{PHP.L.None}</strong></td>
            </tr>
            <!-- END: PM_ROW_EMPTY -->
          </table>

          <!-- IF {PM_PAGES} -->
          <ul class="pagination">{PM_PAGEPREV}{PM_PAGES}{PM_PAGENEXT}</ul>
          <!-- ENDIF -->
        <!-- END: HISTORY -->
        </div>

        <!-- IF {PM_AJAX_MARKITUP} AND {PHP.cfg.pm.turnajax} -->
        <script>
          $(document).ready(function() {$("textarea.editor").markItUp(mySettings);});
        </script>
        <!-- ENDIF -->
        <!-- IF {PHP.cfg.jquery} AND {PHP.cfg.pm.turnajax} -->
        <script src="{PHP.cfg.modules_dir}/pm/js/pm.js"></script>
        <!-- ENDIF -->
      <!-- BEGIN: AFTER_AJAX -->
      </div>
      <!-- END: AFTER_AJAX -->
<!-- END: MAIN -->
