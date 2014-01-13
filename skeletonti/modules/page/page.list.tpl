<!-- BEGIN: MAIN -->
      <div class="page-header">
        <h1>{LIST_CATTITLE}</h1>
      </div>

      <div class="row">
        <div class="col-md-8 pagerow">
          <!-- BEGIN: LIST_ROW -->
          <h3>
            <a href="{LIST_ROW_URL}">{LIST_ROW_SHORTTITLE}</a>
            <!-- IF {PHP.usr.isadmin} -->
            <a href="{LIST_ROW_ADMIN_EDIT_URL}" class="small pull-right">
              <span class="glyphicon glyphicon-edit"></span>
            </a>
            <!-- ENDIF -->
          </h3>
          <!-- IF {LIST_ROW_DESC} -->
          <p class="text-muted">{LIST_ROW_DESC}</p>
          <!-- ENDIF -->
          {LIST_ROW_TEXT_CUT}
          <!-- IF {LIST_ROW_TEXT_IS_CUT} -->
          <a href="{LIST_ROW_URL}" class="btn btn-primary">{PHP.L.ReadMore}</a>
          <!-- ENDIF -->
          <!-- END: LIST_ROW -->
          <!-- IF {LIST_TOP_PAGINATION} -->
          <ul class="pagination">{LIST_TOP_PAGEPREV}{LIST_TOP_PAGINATION}{LIST_TOP_PAGENEXT}</ul>
          <!-- ENDIF -->
        </div>

        <div class="col-md-4 pageside">
          <!-- IF {LIST_ROWCAT_NUM} > 0 -->
          <h4>{PHP.L.Categories}</h4>
          <div class="list-group pagecats">
            <!-- BEGIN: LIST_ROWCAT -->
            <a href="{LIST_ROWCAT_URL}" class="list-group-item">
              <span class="badge">{LIST_ROWCAT_COUNT}</span>
              <h4 class="list-group-item-heading">{LIST_ROWCAT_TITLE}</h4>
              <!-- IF {LIST_ROWCAT_DESC} -->
              <p class="list-group-item-text text-muted">{LIST_ROWCAT_DESC}</p>
              <!-- ENDIF -->
            </a>
            <!-- END: LIST_ROWCAT -->
          </div>
          <!-- ENDIF -->

          <!-- IF {LIST_TAG_CLOUD} -->
          <h4>{PHP.L.Tags}</h4>
          {LIST_TAG_CLOUD}
          <!-- ENDIF -->

          <!-- IF {PHP.usr.auth_write} -->
          <div class="clearfix"></div>
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
