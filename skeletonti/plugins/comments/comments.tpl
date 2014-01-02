<!-- BEGIN: MAIN -->
      <!-- BEGIN: COMMENTS_TITLE -->
      <h3><a href="{COMMENTS_TITLE_URL}">{COMMENTS_TITLE}</a></h3>
      <!-- END: COMMENTS_TITLE -->
      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
      <!-- BEGIN: COMMENTS_FORM_EDIT -->
      <form id="comments" name="comments" action="{COMMENTS_FORM_POST}" method="post" role="form">
        <table class="table">
          <tr>
            <td><strong>{COMMENTS_POSTER_TITLE}:</strong></td>
            <td>{COMMENTS_POSTER}</td>
          </tr>
          <tr>
            <td><strong>{COMMENTS_IP_TITLE}:</strong></td>
            <td>{COMMENTS_IP}</td>
          </tr>
          <tr>
            <td><strong>{COMMENTS_DATE_TITLE}:</strong></td>
            <td>{COMMENTS_DATE}</td>
          </tr>
          <tr>
            <td colspan="2">
              {COMMENTS_FORM_TEXT}
              <!-- IF {COMMENTS_FORM_PFS} -->{COMMENTS_FORM_PFS}<!-- ENDIF -->
              <!-- IF {COMMENTS_FORM_SFS} -->{COMMENTS_FORM_SFS}<!-- ENDIF -->
            </td>
          </tr>
        </table>
        <p class="center">
          <input type="submit" class="btn btn-primary" value="{COMMENTS_FORM_UPDATE_BUTTON}">
        </p>
      </form>
      <!-- END: COMMENTS_FORM_EDIT -->
<!-- END: MAIN -->
<!-- BEGIN: COMMENTS -->
      <a name="comments"></a>
      <div style="display: {COMMENTS_DISPLAY}">
        <!-- BEGIN: COMMENTS_ROW -->
        <div class="row">
          <div class="col-md-2">
            <a href="{COMMENTS_ROW_AUTHOR_DETAILSLINK}">{COMMENTS_ROW_AUTHOR_AVATAR}</a>
          </div>
          <div class="col-md-10">
            <h4>
              <a href="{COMMENTS_ROW_URL}" id="c{COMMENTS_ROW_ID}">{COMMENTS_ROW_ORDER}.</a> {COMMENTS_ROW_AUTHOR}
              <small class="pull-right">{COMMENTS_ROW_DATE}</small>
            </h4>
            <p>{COMMENTS_ROW_TEXT}</p>
            <small class="text-muted">{COMMENTS_ROW_ADMIN}{COMMENTS_ROW_EDIT}</small>
          </div>
        </div>
        <hr>
        <!-- END: COMMENTS_ROW -->
        <!-- BEGIN: PAGNAVIGATOR -->
        <!-- IF {COMMENTS_PAGES_PAGNAV} -->
        <ul class="pagination">{COMMENTS_PAGES_PAGESPREV}{COMMENTS_PAGES_PAGNAV}{COMMENTS_PAGES_PAGESNEXT}</ul>
        <p>{COMMENTS_PAGES_INFO}</p>
        <!-- ENDIF -->
        <!-- END: PAGNAVIGATOR -->
        <!-- BEGIN: COMMENTS_NEWCOMMENT -->
        <h4>{PHP.L.Newcomment}</h4>
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <form action="{COMMENTS_FORM_SEND}" method="post" name="newcomment" role="form">
          <!-- IF {PHP.usr.id} == 0 -->
          <div class="row">
          <!-- ENDIF -->
            <!-- BEGIN: GUEST -->
            <div class="col-sm-4">
              <div class="form-group">
                <label>{PHP.L.Name}:</label>
                {COMMENTS_FORM_AUTHOR}
              </div>
            </div>
            <!-- END: GUEST -->
            <!-- IF {PHP.usr.id} == 0 AND {COMMENTS_FORM_VERIFYIMG} -->
            <div class="col-sm-4">
              <div class="form-group">
                <label>{COMMENTS_FORM_VERIFYIMG}</label>
                {COMMENTS_FORM_VERIFY}
              </div>
            </div>
            <!-- ENDIF -->
          <!-- IF {PHP.usr.id} == 0 -->
          </div>
          <!-- ENDIF -->

          <div class="form-group">
            {COMMENTS_FORM_TEXT}
            <!-- IF {COMMENTS_FORM_PFS} -->{COMMENTS_FORM_PFS}<!-- ENDIF -->
            <!-- IF {COMMENTS_FORM_SFS} -->{COMMENTS_FORM_SFS}<!-- ENDIF -->
          </div>

          <p class="center">
            <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
          </p>
        </form>
        <div class="alert alert-info">{COMMENTS_FORM_HINT}</div>
        <!-- END: COMMENTS_NEWCOMMENT -->

        <!-- BEGIN: COMMENTS_EMPTY -->
        <div class="alert alert-info">{COMMENTS_EMPTYTEXT}</div>
        <!-- END: COMMENTS_EMPTY -->

        <!-- BEGIN: COMMENTS_CLOSED -->
        <div class="alert alert-warning">{COMMENTS_CLOSED}</div>
        <!-- END: COMMENTS_CLOSED -->
      </div>
<!-- END: COMMENTS -->
