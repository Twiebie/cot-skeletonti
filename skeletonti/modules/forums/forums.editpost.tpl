<!-- BEGIN: MAIN -->
      <h3>{FORUMS_EDITPOST_PAGETITLE}</h3>
      <!-- IF {FORUMS_EDITPOST_SUBTITLE} --><small>{FORUMS_EDITPOST_SUBTITLE}</small><!-- ENDIF -->
      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
      <form action="{FORUMS_EDITPOST_SEND}" method="post" name="editpost" role="form" class="form-horizontal">
        <div class="table-responsive">
          <table class="table">
            <!-- BEGIN: FORUMS_EDITPOST_FIRSTPOST -->
            <tr>
              <td>{PHP.L.forums_topic}:</td>
              <td>{FORUMS_EDITPOST_TOPICTITTLE}</td>
            </tr>
            <tr>
              <td>{PHP.L.Description}:</td>
              <td>{FORUMS_EDITPOST_TOPICDESCRIPTION}</td>
            </tr>
            <!-- END: FORUMS_EDITPOST_FIRSTPOST -->
            <tr>
              <td colspan="2">{FORUMS_EDITPOST_TEXT}</td>
            </tr>
            <!-- BEGIN: POLL -->
            <tr>
              <td>{PHP.L.poll}:</td>
              <td>
                <script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
                <script>
                  var ansMax = {PHP.cfg.polls.max_options_polls};
                </script>
                {EDIT_POLL_IDFIELD}
                {EDIT_POLL_TEXT}
              </td>
            </tr>
            <tr>
              <td>{PHP.L.Options}:</td>
              <td>
                <!-- BEGIN: OPTIONS -->
                <div class="form-group">
                  <div class="col-md-10">
                    {EDIT_POLL_OPTION_TEXT}
                  </div>
                  <div class="col-md-2">
                    <input name="deloption" value="x" type="button" class="deloption btn btn-danger btn-xs" style="display: none;">
                  </div>
                </div>
                <!-- END: OPTIONS -->
                <input id="addoption" name="addoption" value="{PHP.L.Add}" type="button" class="btn btn-default" style="display: none;">
              </td>
            </tr>
            <tr>
              <td></td>
              <td>{EDIT_POLL_MULTIPLE}</td>
            </tr>
            <!-- BEGIN: EDIT -->
            <tr>
              <td></td>
              <td>{EDIT_POLL_LOCKED} {EDIT_POLL_RESET} {EDIT_POLL_DELETE}</td>
            </tr>
            <!-- END: EDIT -->
            <!-- END: POLL -->
            <!-- BEGIN: FORUMS_EDITPOST_TAGS -->
            <tr>
              <td>{PHP.L.Tags}:</td>
              <td>{FORUMS_EDITPOST_FORM_TAGS} <span class="text-muted">({FORUMS_EDITPOST_TOP_TAGS_HINT})</span></td>
            </tr>
            <!-- END: FORUMS_EDITPOST_TAGS -->
            <tr>
              <td></td>
              <td>
                <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
              </td>
            </tr>
          </table>
        </div>
      </form>
<!-- END: MAIN -->