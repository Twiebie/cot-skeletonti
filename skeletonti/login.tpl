<!-- BEGIN: MAIN -->
      <div class="page-header">
        <h1>{PHP.L.Login}</h1>
      </div>

      <div class="row">
        <div class="col-md-6">
          <!-- BEGIN: USERS_AUTH_MAINTENANCE -->
          <div class="alert alert-warning">
            <h4>{PHP.L.users_maintenance1}</h4>
            <p>{PHP.L.users_maintenance2}</p>
            <p><strong>{PHP.L.Reason}:</strong> {USERS_AUTH_MAINTENANCERES}</p>
          </div>
          <!-- END: USERS_AUTH_MAINTENANCE -->
          <form name="login" action="{USERS_AUTH_SEND}" method="post" role="form">
            <div class="form-group">
              <label>{PHP.L.users_nameormail}:</label>
              {USERS_AUTH_USER}
            </div>
            <div class="form-group">
              <label>{PHP.L.Password}:</label>
              {USERS_AUTH_PASSWORD}
            </div>
            <div class="form-group">
              <div class="checkbox">
                <label>
                  {USERS_AUTH_REMEMBER} {PHP.L.users_rememberme}
                </label>
              </div>
            </div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary" name="rlogin" value="0">{PHP.L.Login}</button>
            </div>
          </form>
          <a href="{PHP|cot_url('users', 'm=passrecover')}">{PHP.L.users_lostpass}</a>
        </div>
      </div>
<!-- END: MAIN -->
