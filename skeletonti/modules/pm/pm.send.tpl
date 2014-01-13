<!-- BEGIN: MAIN -->
      <!-- BEGIN: BEFORE_AJAX -->
      <div id="ajaxBlock">
      <!-- END: BEFORE_AJAX -->
        <div class="page-header">
          <h1>{PMSEND_TITLE}</h1>
        </div>

        <div class="btn-group">
          <a href="{PMSEND_INBOX_URL}" class="btn btn-sm btn-default<!-- IF {PHP.f} == 'inbox' --> active<!-- ENDIF -->">
            {PHP.L.pm_inbox}
          </a>
          <a href="{PMSEND_SENTBOX_URL}" class="btn btn-sm btn-default<!-- IF {PHP.f} == 'sentbox' --> active<!-- ENDIF -->">
            {PHP.L.pm_sentbox}
          </a>
          <a href="{PMSEND_SENDNEWPM_URL}" class="btn btn-sm btn-default<!-- IF {PHP.m} == 'send' --> active<!-- ENDIF -->">
            {PHP.L.Sendnew}
          </a>
        </div>

        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

        <form action="{PMSEND_FORM_SEND}" method="post" name="newmessage" id="mewmessage" role="form">
          <div class="row">
            <div class="col-md-6">
              <!-- BEGIN: PMSEND_USERLIST -->
              <div class="form-group">
                <label class="control-label">{PHP.L.Recipients}</label>
                {PMSEND_FORM_TOUSER}
              </div>
              <!-- END: PMSEND_USERLIST -->
              <div class="form-group">
                <label class="control-label">{PHP.L.Subject}</label>
                {PMSEND_FORM_TITLE}
              </div>
            </div>
          </div>
          <div class="form-group">
            <label class="control-label">{PHP.L.Message}</label>
            {PMSEND_FORM_TEXT}
          </div>
          <div class="checkbox">
            <label>
              <input type="checkbox" name="fromstate" value="3">{PHP.L.pm_notmovetosentbox}
            </label>
          </div>
          <center><button type="submit" class="btn btn-primary">{PHP.L.Submit}</button></center>
        </form>
        <!-- IF {PMSEND_AJAX_MARKITUP} AND {PHP.cfg.pm.turnajax} -->
        <script>
          $(document).ready(function() {$("textarea.editor").markItUp(mySettings);});
        </script>
        <!-- ENDIF -->
      <!-- BEGIN: AFTER_AJAX -->
      </div>
      <!-- END: AFTER_AJAX -->
<!-- END: MAIN -->
