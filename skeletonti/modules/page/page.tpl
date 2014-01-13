<!-- BEGIN: MAIN -->
      <div class="page-header">
        <h1>
          {PAGE_SHORTTITLE}
          <!-- IF {PHP.usr.isadmin} -->
          <a href="{PAGE_ADMIN_EDIT_URL}" class="small pull-right">
            <span class="glyphicon glyphicon-edit"></span>
          </a>
          <!-- ENDIF -->
        </h1>
        <p>{PAGE_TITLE}</p>
      </div>

      <div class="row">
        <div class="col-md-8">
          <!-- IF {PAGE_DESC} -->
          <p class="text-muted">{PAGE_DESC}</p>
          <!-- ENDIF -->
          {PAGE_TEXT}
          {PAGE_COMMENTS_DISPLAY}
        </div>

        <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">{PHP.L.Information}</div>
            <div class="panel-body">
              <ul class="list-unstyled">
                <!-- IF {PAGE_AUTHOR} --><li>{PHP.L.Author}: {PAGE_AUTHOR}</li><!-- ENDIF -->
                <li>{PHP.L.PostedOn} {PAGE_DATE}</li>
                <li>{PHP.L.Views}: {PAGE_COUNT}</li>
                <!-- IF {PAGE_COMMENTS_COUNT} > 0 --><li>{PHP.L.comments_comments}: {PAGE_COMMENTS_COUNT}</li><!-- ENDIF -->
              </ul>
              <hr>
              <!-- BEGIN: PAGE_FILE -->
              <h4>{PHP.L.Download}</h4>
              <!-- BEGIN: MEMBERSONLY -->
              <h4 class="text-muted" title="{PHP.L.MembersOnly}">{PAGE_FILE_ICON} ;{PAGE_SHORTTITLE} <small>({PHP.L.MembersOnly})</small></h4>
              <!-- END: MEMBERSONLY -->
              <!-- BEGIN: DOWNLOAD -->
              <h4>{PAGE_FILE_ICON} <a href="{PAGE_FILE_URL}">{PAGE_SHORTTITLE}</a></h4>
              <!-- END: DOWNLOAD -->
              <ul class="list-unstyled">
                <li>{PHP.L.Filesize}: {PAGE_FILE_SIZE}{PHP.L.kb}</li>
                <li>{PHP.L.Downloaded}: {PAGE_FILE_COUNT}</li>
              </ul>
              <!-- END: PAGE_FILE -->

              <!-- IF {PAGE_RATINGS_DISPLAY} -->
              <h4>{PHP.L.Ratings}</h4>
              {PAGE_RATINGS_DISPLAY}
              <div class="clearfix"></div>
              <p>{PHP.L.adm_ratings_totalvotes}: {PAGE_RATINGS_COUNT}</p>
              <!-- ENDIF -->

              <!-- IF {PHP.cfg.plugin.tags.pages} -->
              <h4>{PHP.L.Tags}</h4>
              <ul class="list-inline tag_cloud">
                <!-- BEGIN: PAGE_TAGS_ROW -->
                <li>
                  <a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="tag">{PAGE_TAGS_ROW_TAG}</a>
                </li>
                <!-- END: PAGE_TAGS_ROW -->
              </ul>
              <!-- ENDIF -->

              <!-- IF {PAGE_I18N_TRANSLATE} -->
              <hr>
              <h4>{PHP.L.Translate}</h4>
              <ul class="list-unstyled">
                <li><a href="{I18N_LANG_ROW_URL}">{I18N_LANG_ROW_TITLE}</a></li>
                <li>{PAGE_I18N_TRANSLATE}</li>
                <li>{PAGE_I18N_DELETE}</li>
              </ul>
              <!-- ENDIF -->

              <!-- BEGIN: PAGE_ADMIN -->
              <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#admin-page-options">
                {PHP.L.Administration} <b class="caret"></b>
              </button>
              <div id="admin-page-options" class="collapse">
                <ul class="list-unstyled">
                  <!-- IF {PHP.usr.isadmin} -->
                  <li><a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a></li>
                  <!-- ENDIF -->
                  <li><a href="{PAGE_CAT|cot_url('page','m=add&amp;c=$this')}">{PHP.L.page_addtitle}</a></li>
                  <li>{PAGE_ADMIN_UNVALIDATE}</li>
                  <li>{PAGE_ADMIN_EDIT}</li>
                  <li>{PAGE_ADMIN_CLONE}</li>
                  <li>{PAGE_ADMIN_DELETE}</li>
                </ul>
              </div>
              <!-- END: PAGE_ADMIN -->

              <!-- BEGIN: PAGE_MULTI -->
              <h4>{PHP.L.Summary}:</h4>
              {PAGE_MULTI_TABTITLES}
              <p>{PAGE_MULTI_TABNAV}</p>
              <!-- END: PAGE_MULTI -->

            </div>
          </div>
        </div>
      </div>
<!-- END: MAIN -->
