<!-- BEGIN: MAIN -->
      <div class="page-header">
        <h1>{PHP.L.Contact}</h1>
      </div>
      <div class="row">
        <div class="col-md-4">
          <address>
            <strong>{PHP.cfg.maintitle}</strong><br>
            404, Our Address<br>
            Siena, 1223<br>
            <span class="glyphicon glyphicon-earphone"></span> (123) 456-7890
          </address>
          <address>
            <strong>John Lennon</strong><br>
            <a href="mailto:#">john.lennon@example.com</a>
          </address>
          <p>Nullam hendrerit sapien non libero ullamcorper, vitae tempus nunc commodo. Phasellus at eros mollis, dapibus risus sed, accumsan justo. Donec luctus viverra nisi eu facilisis.</p>
        </div>

        <div class="col-md-6 col-md-offset-2">
          {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
          <!-- BEGIN: FORM -->
          <form action="{CONTACT_FORM_SEND}" method="post" name="contact_form" role="form">
            <div class="form-group">
              <label>{PHP.L.Name}:</label>
              {CONTACT_FORM_AUTHOR}
            </div>
            <div class="form-group">
              <label>{PHP.L.Email}:</label>
              {CONTACT_FORM_EMAIL}
            </div>
            <div class="form-group">
              <label>{PHP.L.Subject}:</label>
              {CONTACT_FORM_SUBJECT}
            </div>
            <div class="form-group">
              <label>{PHP.L.Message}:</label>
              {CONTACT_FORM_TEXT}
            </div>
            <!-- BEGIN: EXTRAFLD -->
            <div class="form-group">
              <label>{CONTACT_FORM_EXTRAFLD_TITLE}:</label>
              {CONTACT_FORM_EXTRAFLD}
            </div>
            <!-- END: EXTRAFLD -->
            <!-- BEGIN: CAPTCHA -->
            <div class="form-group">
              <label>{CONTACT_FORM_VERIFY_IMG}</label>
              {CONTACT_FORM_VERIFY}
            </div>
            <!-- END: CAPTCHA -->
            <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
          </form>
          <!-- END: FORM -->
        </div>
      </div>
<!-- END: MAIN -->
