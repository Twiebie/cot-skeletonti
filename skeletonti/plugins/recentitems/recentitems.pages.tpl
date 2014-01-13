<!-- BEGIN: MAIN -->
      <h2>{PHP.L.Pages}</h2>
      <div class="table-responsive">
        <table class="table table-striped">
          <thead>
            <th>&nbsp;</th>
            <th>{PHP.L.Page}</th>
            <th>{PHP.L.Owner}</th>
            <th>{PHP.L.Views}</th>
          </thead>
          <tbody>
            <!-- BEGIN: PAGE_ROW -->
            <tr>
              <td class="middle">
                <center>{PHP.R.icon_page}</center>
              </td>
              <td>
                <h4><a href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a></h4>
                <!-- IF {PAGE_ROW_DESC} --><p>{PAGE_ROW_DESC}</p><!-- ENDIF -->
                <p>{PHP.L.PostedOn} {PAGE_ROW_DATE} {PHP.L.In} {PAGE_ROW_CATPATH}</p>
              </td>
              <td>{PAGE_ROW_OWNER}</td>
              <td>{PAGE_ROW_COUNT}</td>
            </tr>
            <!-- END: PAGE_ROW -->
            <!-- BEGIN: NO_PAGES_FOUND -->
            <tr>
              <td class="center" colspan="4">{PHP.L.recentitems_nonewpages}</td>
            </tr>
            <!-- END: NO_PAGES_FOUND -->
          </tbody>
        </table>
      </div>
<!-- END: MAIN -->
