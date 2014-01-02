<!-- BEGIN: MAIN -->
      <h2>{USERS_TITLE}</h2>
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
      <form action="{USERS_TOP_FILTER_ACTION}" method="post" class="form-inline" role="form">
        <div class="form-group">
          {USERS_TOP_FILTERS_COUNTRY}
        </div>
        <div class="form-group">
          {USERS_TOP_FILTERS_MAINGROUP}
        </div>
        <div class="form-group">
          {USERS_TOP_FILTERS_GROUP}
        </div>
        <div class="form-group">
          {USERS_TOP_FILTERS_SEARCH}
        </div>
        <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
      </form>
      <!-- IF {USERS_TOP_TOTALPAGE} > 1 -->
      <ul class="pagination">{USERS_TOP_PAGEPREV}{USERS_TOP_PAGNAV}{USERS_TOP_PAGENEXT}</ul>
      <!-- ENDIF -->
      <p>{PHP.L.users_usersperpage}: {USERS_TOP_MAXPERPAGE}, {PHP.L.users_usersinthissection}: {USERS_TOP_TOTALUSERS}</p>
<!-- END: MAIN -->
