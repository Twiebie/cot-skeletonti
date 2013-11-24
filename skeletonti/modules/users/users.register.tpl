<!-- BEGIN: MAIN -->
      <h2>{USERS_REGISTER_TITLE}</h2>
      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
      <form name="login" action="{USERS_REGISTER_SEND}" method="post" enctype="multipart/form-data" class="form-horizontal" role="form">
        <div class="form-group">
          <label class="col-md-2 control-label">{PHP.L.Username}:</label>
          <div class="col-md-4">
            {USERS_REGISTER_USER}
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-2 control-label">{PHP.L.users_validemail}:</label>
          <div class="col-md-4">
            {USERS_REGISTER_EMAIL}
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-2 control-label">{PHP.L.Password}:</label>
          <div class="col-md-4">
            {USERS_REGISTER_PASSWORD}
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-2 control-label">{PHP.L.users_confirmpass}:</label>
          <div class="col-md-4">
            {USERS_REGISTER_PASSWORDREPEAT}
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-2 control-label">{USERS_REGISTER_VERIFYIMG}:</label>
          <div class="col-md-4">
            {USERS_REGISTER_VERIFYINPUT}
          </div>
        </div>
        <div class="form-group">
          <div class="col-md-offset-2 col-md-4">
            <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
          </div>
        </div>
      </form>
<!-- END: MAIN -->