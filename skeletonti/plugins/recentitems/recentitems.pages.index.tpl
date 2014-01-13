<!-- BEGIN: MAIN -->
      <h3>{PHP.L.RecentPages}</h3>
      <table class="table table-condensed">
        <tbody>
          <!-- BEGIN: PAGE_ROW -->
          <tr>
            <!-- IF {PAGE_ROW_FILE_ICON} -->
            <td class="middle">
              <center>
                {PAGE_ROW_FILE_ICON}
              </center>
            </td>
            <!-- ENDIF -->
            <td>
              <h4><a href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a></h4>
              <small>{PHP.L.PostedOn} {PAGE_ROW_DATE} {PHP.L.In} {PAGE_ROW_CATPATH}</small>
            </td>
          </tr>
          <!-- END: PAGE_ROW -->
          <!-- BEGIN: NO_PAGES_FOUND -->
          <tr>
            <td colspan="4"><center>{PHP.L.recentitems_nonewpages}</center></td>
          </tr>
          <!-- END: NO_PAGES_FOUND -->
        </tbody>
        <tfoot>
          <tr>
            <td colspan="4">
              <a href="{PHP|cot_url('recentitems', 'mode=pages')}" class="pull-right">{PHP.L.Viewall}</a>
            </td>
          </tr>
        </tfoot>
      </table>
<!-- END: MAIN -->
