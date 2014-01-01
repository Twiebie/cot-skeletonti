<!-- BEGIN: MAIN -->
      <h3>{PAGEADD_PAGETITLE}</h3>
      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
      <form action="{PAGEADD_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform" role="form">
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label class="control-label">{PHP.L.Title}:</label>
              {PAGEADD_FORM_TITLE}
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label class="control-label">{PHP.L.Category}:</label>
              {PAGEADD_FORM_CAT}
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="panel-group" id="accordion">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion" href="#pa-options">
                    {PHP.L.Options}
                  </a>
                </h4>
              </div>
              <div id="pa-options" class="panel-collapse collapse">
                <div class="panel-body">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label class="control-label">{PHP.L.Alias}:</label>
                        {PAGEADD_FORM_ALIAS}
                      </div>
                      <div class="form-group">
                        <label class="control-label">{PHP.L.Parser}:</label>
                        {PAGEADD_FORM_PARSER}
                      </div>
                    </div>
                    <div class="col-md-6">
                      <!-- BEGIN: TAGS -->
                      <div class="form-group">
                        <label class="control-label">{PAGEADD_TOP_TAGS}:</label>
                        {PAGEADD_FORM_TAGS} <span class="text-muted">({PAGEADD_TOP_TAGS_HINT})</span>
                      </div>
                      <!-- END: TAGS -->
                      <div class="form-group">
                        <label class="control-label">{PHP.L.Keywords}:</label>
                        {PAGEADD_FORM_KEYWORDS}
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion" href="#pa-beginexpire">
                    {PHP.L.Date} <small>({PHP.L.Begin} / {PHP.L.Expire})</small>
                  </a>
                </h4>
              </div>
              <div id="pa-beginexpire" class="panel-collapse collapse">
                <div class="panel-body">
                  <div class="form-group">
                    <label class="control-label">{PHP.L.Begin}:</label>
                    <div class="row">
                      {PAGEADD_FORM_BEGIN}
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label">{PHP.L.Expire}:</label>
                    <div class="row">
                      {PAGEADD_FORM_EXPIRE}
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion" href="#pa-download">
                    {PHP.L.Download}
                  </a>
                </h4>
              </div>
              <div id="pa-download" class="panel-collapse collapse">
                <div class="panel-body">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label class="control-label">{PHP.L.page_file}:</label>
                        {PAGEADD_FORM_FILE} <span class="text-muted">{PHP.L.page_filehint}</span>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label class="control-label">{PHP.L.Filesize}:</label>
                        <div class="input-group">
                          {PAGEADD_FORM_SIZE}
                          <span class="input-group-addon">{PHP.L.kb}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group">
                      <span class="input-group-addon">{PHP.L.URL}</span>
                      {PAGEADD_FORM_URL}
                    </div>
                    {PAGEADD_FORM_PFS_URL_USER} &nbsp; {PAGEADD_FORM_PFS_URL_SITE}
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="form-group">
          {PAGEADD_FORM_TEXT}
          <!-- IF {PAGEADD_FORM_PFS} -->{PAGEADD_FORM_PFS}<!-- ENDIF -->
          <!-- IF {PAGEADD_FORM_SFS} -->{PAGEADD_FORM_SFS}<!-- ENDIF -->
        </div>

        <div class="form-group">
          <!-- IF {PHP.usr_can_publish} -->
          <button type="submit" name="rpagestate" value="0" class="btn btn-success">{PHP.L.Publish}</button>
          <!-- ENDIF -->
          <button type="submit" name="rpagestate" value="2" class="btn btn-default">{PHP.L.Saveasdraft}</button>
          <button type="submit" name="rpagestate" value="1" class="btn btn-default">{PHP.L.Submitforapproval}</button>
        </div>
      </form>
<!-- END: MAIN -->