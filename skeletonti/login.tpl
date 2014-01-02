<!-- BEGIN: MAIN -->
      <h2>{USERS_AUTH_TITLE}</h2>
      <!-- BEGIN: USERS_AUTH_MAINTENANCE -->
      <div class="alert alert-warning">
        <h4>{PHP.L.users_maintenance1}</h4>
        <p>{PHP.L.users_maintenance2}</p>
        <p><strong>{PHP.L.Reason}:</strong> {USERS_AUTH_MAINTENANCERES}</p>
      </div>
      <!-- END: USERS_AUTH_MAINTENANCE -->
      <form name="login" action="{USERS_AUTH_SEND}" method="post" class="form-horizontal" role="form">
        <div class="form-group">
          <label class="col-sm-2 control-label">{PHP.L.users_nameormail}:</label>
          <div class="col-sm-4">
            {USERS_AUTH_USER}
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">{PHP.L.Password}:</label>
          <div class="col-sm-4">
            {USERS_AUTH_PASSWORD}
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-4">
            <div class="checkbox">
              <label>
                {USERS_AUTH_REMEMBER} {PHP.L.users_rememberme}
              </label>
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-4">
            <button type="submit" class="btn btn-primary" name="rlogin" value="0">{PHP.L.Login}</button>
          </div>
        </div>
      </form>
      <div class="row">
        <div class="col-sm-offset-2 col-sm-4">
          <a href="{PHP|cot_url('users', 'm=passrecover')}">{PHP.L.users_lostpass}</a>
        </div>
      </div>
<!-- END: MAIN -->
