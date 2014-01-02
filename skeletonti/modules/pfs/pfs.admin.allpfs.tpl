<!-- BEGIN: MAIN -->
      <table class="table">
        <thead>
          <th>{PHP.L.User}</th>
          <th>{PHP.L.Files}</th>
          <th>{PHP.L.Edit}</th>
        </thead>
        <tbody>
          <!-- BEGIN: ALLPFS_ROW -->
          <tr>
            <td>{ADMIN_ALLPFS_ROW_USER}</td>
            <td>{ADMIN_ALLPFS_ROW_COUNT}</td>
            <td>
              <a href="{ADMIN_ALLPFS_ROW_URL}" class="btn btn-sm btn-default"><i class="glyphicon glyphicon-edit"></i> {PHP.L.Edit}</a>
            </td>
          </tr>
          <!-- END: ALLPFS_ROW -->
        </tbody>
      </table>
      <!-- IF {ADMIN_ALLPFS_PAGNAV} -->
      <ul class="pagination">{ADMIN_ALLPFS_PAGINATION_PREV}{ADMIN_ALLPFS_PAGNAV}{ADMIN_ALLPFS_PAGINATION_NEXT}</ul>
      <!-- ENDIF -->
      <p>{PHP.L.Total}: {ADMIN_ALLPFS_TOTALITEMS}, {PHP.L.comm_on_page}: {ADMIN_ALLPFS_ON_PAGE}</p>
<!-- END: MAIN -->
