<!-- BEGIN: MAIN -->
      <h2><a href="{PHP|cot_url('plug','e=contact')}">{PHP.L.contact_title}</a></h2>
      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
      <!-- BEGIN: FORM -->
      <form action="{CONTACT_FORM_SEND}" method="post" name="contact_form" class="form-horizontal" role="form">
        <div class="form-group">
          <label class="col-md-2 control-label">{PHP.L.Username}:</label>
          <div class="col-md-4">
            {CONTACT_FORM_AUTHOR}
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-2 control-label">{PHP.L.Email}:</label>
          <div class="col-md-4">
            {CONTACT_FORM_EMAIL}
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-2 control-label">{PHP.L.Subject}:</label>
          <div class="col-md-4">
            {CONTACT_FORM_SUBJECT}
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-2 control-label">{PHP.L.Message}:</label>
          <div class="col-md-4">
            {CONTACT_FORM_TEXT}
          </div>
        </div>
        <!-- BEGIN: EXTRAFLD -->
        <div class="form-group">
          <label class="col-md-2 control-label">{CONTACT_FORM_EXTRAFLD_TITLE}:</label>
          <div class="col-md-4">
            {CONTACT_FORM_EXTRAFLD}
          </div>
        </div>
        <!-- END: EXTRAFLD -->
        <!-- BEGIN: CAPTCHA -->
        <div class="form-group">
          <label class="col-md-2 control-label">{CONTACT_FORM_VERIFY_IMG}</label>
          <div class="col-md-4">
            {CONTACT_FORM_VERIFY}
          </div>
        </div>
        <!-- END: CAPTCHA -->
        <div class="form-group">
          <div class="col-md-offset-2 col-md-4">
            <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
          </div>
        </div>
      </form>
      <!-- END: FORM -->
<!-- END: MAIN -->