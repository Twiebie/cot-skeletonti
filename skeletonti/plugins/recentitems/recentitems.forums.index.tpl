<!-- BEGIN: MAIN -->
      <h3>{PHP.L.RecentTopics}</h3>
      <table class="table table-condensed">
        <tbody>
          <!-- BEGIN: TOPICS_ROW -->
          <tr>
            <td class="middle">
              <center>{FORUM_ROW_ICON}</center>
            </td>
            <td>
              <h4><a href="{FORUM_ROW_URL}">{FORUM_ROW_TITLE}</a></h4>
              <small>{FORUM_ROW_TIMEAGO} {PHP.L.Ago} {PHP.L.In} {FORUM_ROW_PATH_SHORT}</small>
            </td>
          </tr>
          <!-- END: TOPICS_ROW -->
          <!-- BEGIN: NO_TOPICS_FOUND -->
          <tr>
            <td colspan="4"><center>{PHP.L.recentitems_nonewposts}</center></td>
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
