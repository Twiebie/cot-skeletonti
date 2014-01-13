<!-- BEGIN: MAIN -->
      <div class="page-header">
        <h1>{PHP.L.Register}</h1>
        <p>{PHP.L.RegisterHint}</p>
      </div>
      <div class="row">
        <div class="col-md-8">
          {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
          <form id="regform" name="login" action="{USERS_REGISTER_SEND}" method="post" enctype="multipart/form-data" role="form">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="">{PHP.L.Username}:</label>
                  {USERS_REGISTER_USER}
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>{PHP.L.users_validemail}:</label>
                  {USERS_REGISTER_EMAIL}
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>{PHP.L.Password}:</label>
                  {USERS_REGISTER_PASSWORD}
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>{PHP.L.users_confirmpass}:</label>
                  {USERS_REGISTER_PASSWORDREPEAT}
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>{USERS_REGISTER_VERIFYIMG}</label>
                  {USERS_REGISTER_VERIFYINPUT}
                </div>
              </div>
            </div>
            <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
          </form>
        </div>
      </div>
<!-- END: MAIN -->
