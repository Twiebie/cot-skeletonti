<!-- BEGIN: MAIN -->
      <h3><a href="{PHP|cot_url('index')}">{PHP.L.Pages}</a></h3>
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
              <td class="center">{PHP.R.icon_page}</td>
              <td>
                <h4><a href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a></h4>
                <!-- IF {PAGE_ROW_DESC} --><small>{PAGE_ROW_DESC}</small><!-- ENDIF -->
                <small>{PAGE_ROW_CATPATH}</small>
              </td>
              <td>{PAGE_ROW_DATE}: {PAGE_ROW_OWNER}</td>
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
