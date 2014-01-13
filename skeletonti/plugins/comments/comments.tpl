<!-- BEGIN: MAIN -->
      <div class="page-header">
        <h1>{PHP.L.Editcomment}</h1>
      </div>

      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
      <!-- BEGIN: COMMENTS_FORM_EDIT -->
      <form id="comments" name="comments" action="{COMMENTS_FORM_POST}" method="post" role="form">
        <div class="row">
          <div class="col-md-4">
            <div class="form-group">
              <label>{COMMENTS_POSTER_TITLE}:</label>
              <input class="form-control" value="{COMMENTS_POSTER}" disabled>
            </div>
            <div class="form-group">
              <label>{COMMENTS_IP_TITLE}:</label>
              <input class="form-control" value="{COMMENTS_IP}" disabled>
            </div>
            <div class="form-group">
              <label>{COMMENTS_DATE_TITLE}:</label>
              <input class="form-control" value="{COMMENTS_DATE}" disabled>
            </div>
          </div>
          <div class="col-md-8">
            <div class="form-group">
              {COMMENTS_FORM_TEXT}
              <!-- IF {COMMENTS_FORM_PFS} --><small>{COMMENTS_FORM_PFS}</small><!-- ENDIF -->
              <!-- IF {COMMENTS_FORM_SFS} --><small>{COMMENTS_FORM_SFS}</small><!-- ENDIF -->
            </div>
            <div class="form-group">
              <center><input type="submit" class="btn btn-primary" value="{COMMENTS_FORM_UPDATE_BUTTON}"></center>
            </div>
          </div>
        </div>
      </form>
      <!-- END: COMMENTS_FORM_EDIT -->
<!-- END: MAIN -->
<!-- BEGIN: COMMENTS -->
      <a name="comments"></a>
      <div style="display: {COMMENTS_DISPLAY}">
        <h3><span class="glyphicon glyphicon-comment"></span> {PHP.L.Comments}</h3>
        <!-- BEGIN: COMMENTS_ROW -->
        <div class="media">
          <a class="pull-left" href="{COMMENTS_ROW_AUTHOR_DETAILSLINK}">
            {COMMENTS_ROW_AUTHOR_AVATAR}
          </a>
          <div class="media-body">
            <h4 id="c{COMMENTS_ROW_ID}" class="media-heading">{COMMENTS_ROW_AUTHOR} <small class="pull-right">{COMMENTS_ROW_DATE}</small></h4>
            {COMMENTS_ROW_TEXT}
            <p class="small text-muted">{COMMENTS_ROW_ADMIN}{COMMENTS_ROW_EDIT}</p>
          </div>
        </div>
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
            <!-- IF {COMMENTS_FORM_PFS} --><small>{COMMENTS_FORM_PFS}</small><!-- ENDIF -->
            <!-- IF {COMMENTS_FORM_SFS} --><small>{COMMENTS_FORM_SFS}</small><!-- ENDIF -->
          </div>

          <div class="form-group">
            <center><button type="submit" class="btn btn-primary">{PHP.L.Submit}</button></center>
          </div>
        </form>
        <div class="alert alert-info">{COMMENTS_FORM_HINT}</div>
        <!-- END: COMMENTS_NEWCOMMENT -->

        <!-- BEGIN: COMMENTS_CLOSED -->
        <div class="alert alert-warning">{COMMENTS_CLOSED}</div>
        <!-- END: COMMENTS_CLOSED -->
      </div>
<!-- END: COMMENTS -->
