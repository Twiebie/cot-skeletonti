<!-- BEGIN: MAIN -->
      <div class="page-header">
        <h1>{USERS_TITLE}</h1>
      </div>

      <div class="table-responsive">
        <table class="table table-striped">
          <thead>
            <tr>
              <!-- IF {PHP.usr.maingrp} > 0 AND {PHP.cot_modules.pm} --><th>{USERS_TOP_PM}</th><!-- ENDIF -->
              <th>{USERS_TOP_NAME}</th>
              <th>{USERS_TOP_GRPTITLE}</th>
              <th>{USERS_TOP_GRPLEVEL}</th>
              <th>{USERS_TOP_COUNTRY}</th>
              <th>{USERS_TOP_REGDATE}</th>
            </tr>
          </thead>
          <tbody>
            <!-- BEGIN: USERS_ROW -->
            <tr>
              <!-- IF {PHP.usr.maingrp} > 0 AND {PHP.cot_modules.pm} --><td>{USERS_ROW_PM}</td><!-- ENDIF -->
              <td>{USERS_ROW_NAME}&nbsp;{USERS_ROW_TAG}</td>
              <td>{USERS_ROW_MAINGRP}</td>
              <td>{USERS_ROW_MAINGRPSTARS}</td>
              <td>{USERS_ROW_COUNTRYFLAG} {USERS_ROW_COUNTRY}</td>
              <td>{USERS_ROW_REGDATE}</td>
            </tr>
            <!-- END: USERS_ROW -->
          </tbody>
        </table>
      </div>
      <h3>{PHP.L.Filters}</h3>
      <form action="{USERS_TOP_FILTER_ACTION}" method="post" role="form">
        <div class="row">
          <div class="col-md-3">
            <div class="form-group">
              {USERS_TOP_FILTERS_COUNTRY}
            </div>
          </div>
          <div class="col-md-2">
            <div class="form-group">
              {USERS_TOP_FILTERS_MAINGROUP}
            </div>
          </div>
          <div class="col-md-2">
            <div class="form-group">
              {USERS_TOP_FILTERS_GROUP}
            </div>
          </div>
          <div class="col-md-3">
            <div class="form-group">
              {USERS_TOP_FILTERS_SEARCH}
            </div>
          </div>
          <div class="col-md-2">
            <div class="form-group">
              <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
            </div>
          </div>
        </div>
      </form>
      <!-- IF {USERS_TOP_PAGNAV} -->
      <ul class="pagination">{USERS_TOP_PAGEPREV}{USERS_TOP_PAGNAV}{USERS_TOP_PAGENEXT}</ul>
      <!-- ENDIF -->
      <p>{PHP.L.users_usersperpage}: {USERS_TOP_MAXPERPAGE}. {PHP.L.users_usersinthissection}: {USERS_TOP_TOTALUSERS}.</p>
<!-- END: MAIN -->
