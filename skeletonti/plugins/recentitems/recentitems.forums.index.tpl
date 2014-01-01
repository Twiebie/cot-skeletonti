<!-- BEGIN: MAIN -->
      <h4>{PHP.L.RecentTopics}</h4>
      <table class="table table-striped">
        <tbody>
          <!-- BEGIN: TOPICS_ROW -->
          <tr>
            <td class="middle center">
              {FORUM_ROW_ICON}
            </td>
            <td>
              <h5><a href="{FORUM_ROW_URL}">{FORUM_ROW_TITLE}</a></h5>
              <small>{FORUM_ROW_PATH_SHORT}</small>
            </td>
            <td class="middle">
              {FORUM_ROW_TIMEAGO} {PHP.L.Ago}
            </td>
          </tr>
          <!-- END: TOPICS_ROW -->
          <!-- BEGIN: NO_TOPICS_FOUND -->
          <tr>
            <td class="center" colspan="4">{PHP.L.recentitems_nonewposts}</td>
          </tr>
          <!-- END: NO_TOPICS_FOUND -->
        </tbody>
        <tfoot>
          <tr>
            <td colspan="4">
              <a href="{PHP|cot_url('recentitems', 'mode=forums')}" class="pull-right">{PHP.L.Viewall}</a>
            </td>
          </tr>
        </tfoot>
      </table>
<!-- END: MAIN -->