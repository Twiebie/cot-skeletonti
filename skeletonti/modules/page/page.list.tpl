<!-- BEGIN: MAIN -->
      <div class="row">
        <div class="col-md-8">
          <h2>{LIST_CATTITLE}</h2>
          <!-- BEGIN: LIST_ROW -->
          <h3><a href="{LIST_ROW_URL}">{LIST_ROW_SHORTTITLE}</a></h3>
          <!-- IF {LIST_ROW_DESC} --><p>{LIST_ROW_DESC}</p><!-- ENDIF -->
          <!-- IF {PHP.usr.isadmin} --><p>{LIST_ROW_ADMIN} ({LIST_ROW_COUNT})</p><!-- ENDIF -->
          <p>{LIST_ROW_TEXT_CUT}</p>
          <!-- IF {LIST_ROW_TEXT_IS_CUT} --><p><a href="{LIST_ROW_URL}" class="btn btn-sm btn-primary">{PHP.L.ReadMore}</a></p><!-- ENDIF -->
          <hr>
          <!-- END: LIST_ROW -->
          <!-- IF {LIST_TOP_PAGINATION} -->
          <ul class="pagination">{LIST_TOP_PAGEPREV}{LIST_TOP_PAGINATION}{LIST_TOP_PAGENEXT}</ul>
          <p>{PHP.L.Page} {LIST_TOP_CURRENTPAGE} {PHP.L.Of} {LIST_TOP_TOTALPAGES}</p>
          <!-- ENDIF -->
          <div class="well well-sm">
            {LIST_TAG_CLOUD}
          </div>
        </div>

        <div class="col-md-4">
          <!-- BEGIN: LIST_ROWCAT -->
          <h3><a href="{LIST_ROWCAT_URL}" title="{LIST_ROWCAT_TITLE}">{LIST_ROWCAT_TITLE}</a> ({LIST_ROWCAT_COUNT})</h3>
          <!-- IF {LIST_ROWCAT_DESC} -->
          <p>{LIST_ROWCAT_DESC}</p>
          <!-- ENDIF -->
          <!-- END: LIST_ROWCAT -->

          <!-- IF {PHP.usr.auth_write} -->
          <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#admin-page-options">
            {PHP.L.Adminpanel} <b class="caret"></b>
          </button>
          <div id="admin-page-options" class="collapse">
            <ul class="list-unstyled">
              <!-- IF {PHP.usr.isadmin} -->
              <li><a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a></li>
              <!-- ENDIF -->
              <li>{LIST_SUBMITNEWPAGE}</li>
            </ul>
          </div>
          <!-- ENDIF -->
        </div>
      </div>
<!-- END: MAIN -->