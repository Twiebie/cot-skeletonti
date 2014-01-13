<!-- BEGIN: MAIN -->
      <div class="page-header">
        <h1>{FORUMS_EDITPOST_PAGETITLE}</h1>
        <!-- IF {FORUMS_EDITPOST_SUBTITLE} --><p>{FORUMS_EDITPOST_SUBTITLE}</p><!-- ENDIF -->
      </div>

      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
      <form action="{FORUMS_EDITPOST_SEND}" method="post" name="editpost" role="form">
        <!-- BEGIN: FORUMS_EDITPOST_FIRSTPOST -->
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label>{PHP.L.forums_topic}:</label>
              {FORUMS_EDITPOST_TOPICTITTLE}
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label>{PHP.L.Description}:</label>
              {FORUMS_EDITPOST_TOPICDESCRIPTION}
            </div>
          </div>
        </div>
        <!-- END: FORUMS_EDITPOST_FIRSTPOST -->
        <!-- BEGIN: FORUMS_EDITPOST_TAGS -->
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label>{PHP.L.Tags}:</label>
              {FORUMS_EDITPOST_FORM_TAGS}
              <p class="help-block">{FORUMS_EDITPOST_TOP_TAGS_HINT}</p>
            </div>
          </div>
        </div>
        <!-- END: FORUMS_EDITPOST_TAGS -->
        <!-- BEGIN: POLL -->
        <div class="form-group">
          <div class="panel-group" id="accordion">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion" href="#forum-edit-poll">
                    {PHP.L.poll} <span class="caret"></span>
                  </a>
                </h4>
              </div>
              <div id="forum-edit-poll" class="panel-collapse collapse">
                <div class="panel-body">
                  <script src="{PHP.cfg.themes_dir}/{PHP.usr.theme}/js/polls.js"></script>
                  <script>
                    var pollMax = {PHP.cfg.polls.max_options_polls};
                  </script>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
                        <label>{PHP.L.poll}:</label>
                        {EDIT_POLL_IDFIELD}
                        {EDIT_POLL_TEXT}
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label>{PHP.L.Options}:</label>
                    <div id="pollcontainer">
                      <!-- BEGIN: OPTIONS -->
                      <div class="polloption">
                        <div class="row form-group">
                          <div class="col-md-4">
                            <div class="input-group">
                              {EDIT_POLL_OPTION_TEXT}
                              <span class="input-group-btn">
                                <button name="delpollopt" type="button" class="btn btn-danger" disabled>
                                  <span class="glyphicon glyphicon-remove-circle"></span>
                                </button>
                              </span>
                            </div>
                          </div>
                        </div>
                      </div>
                      <!-- END: OPTIONS -->
                    </div>
                  </div>
                  <div class="checkbox">
                    <label>
                      {EDIT_POLL_MULTIPLE}
                    </label>
                  </div>
                  <div class="form-group">
                    <button name="addpollopt" type="button" class="btn btn-default">{PHP.L.Add}</button>
                  </div>
                  <!-- BEGIN: EDIT -->
                  <div class="form-group">
                    <label>{PHP.L.Status}:</label>
                    <div class="checkbox">
                      <label>
                        {EDIT_POLL_LOCKED}
                      </label>
                    </div>
                    <div class="checkbox">
                      <label>{EDIT_POLL_RESET}</label>
                    </div>
                    <div class="checkbox">
                      <label>{EDIT_POLL_DELETE}</label>
                    </div>
                  </div>
                  <!-- END: EDIT -->
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- END: POLL -->
        <div class="form-group">
          {FORUMS_EDITPOST_TEXT}
        </div>
        <center>
          <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
        </center>
      </form>
<!-- END: MAIN -->
