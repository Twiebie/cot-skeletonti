<!-- BEGIN: MAIN -->
      <div class="page-header">
        <h1>{FORUMS_NEWTOPIC_PAGETITLE}</h1>
      </div>

      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
      <form action="{FORUMS_NEWTOPIC_SEND}" method="post" name="newtopic" role="form">
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label>{PHP.L.Title}:</label>
              {FORUMS_NEWTOPIC_TITLE}
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label>{PHP.L.Description}:</label>
              {FORUMS_NEWTOPIC_DESC}
            </div>
          </div>
        </div>
        <div class="row">
          <!-- BEGIN: PRIVATE -->
          <div class="col-md-6">
            <div class="checkbox">
              <label>
                {PHP.L.forums_privatetopic1}
                {FORUMS_NEWTOPIC_ISPRIVATE}
              </label>
              <p class="help-block">{PHP.L.forums_privatetopic2}.</p>
            </div>
          </div>
          <!-- END: PRIVATE -->
          <!-- BEGIN: FORUMS_NEWTOPIC_TAGS -->
          <div class="col-md-6">
            <div class="form-group">
              <label>{PHP.L.Tags}:</label>
              {FORUMS_NEWTOPIC_FORM_TAGS}
              <p class="help-block">{FORUMS_NEWTOPIC_TOP_TAGS_HINT}.</p>
            </div>
          </div>
          <!-- END: FORUMS_NEWTOPIC_TAGS -->
        </div>
        <!-- BEGIN: POLL -->
        <div class="form-group">
          <div class="panel-group" id="accordion">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion" href="#forum-add-poll">
                    {PHP.L.poll} <span class="caret"></span>
                  </a>
                </h4>
              </div>
              <div id="forum-add-poll" class="panel-collapse collapse">
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
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- END: POLL -->
        <div class="form-group">
          {FORUMS_NEWTOPIC_TEXT}
        </div>
        <center>
          <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
        </center>
      </form>
<!-- END: MAIN -->
