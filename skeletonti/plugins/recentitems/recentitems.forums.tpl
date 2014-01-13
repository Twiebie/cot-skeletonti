<!-- BEGIN: MAIN -->
      <h2>{PHP.L.Forums}</h2>
      <div class="table-responsive">
        <table class="table table-striped">
          <thead>
            <th>&nbsp;</th>
            <th>{PHP.L.Topics} / {PHP.L.Started}</th>
            <th>{PHP.L.Lastpost}</th>
            <th>{PHP.L.Posts}</th>
            <th>{PHP.L.Views}</th>
          </thead>
          <tbody>
            <!-- BEGIN: TOPICS_ROW -->
            <tr>
              <td class="middle">
                <center>{FORUM_ROW_ICON}</center>
              </td>
              <td>
                <h4><a href="{FORUM_ROW_URL}">{FORUM_ROW_TITLE}</a></h4>
                <p>{FORUM_ROW_PATH}</p>
                <p>
                  {PHP.L.PostedOn} {FORUM_ROW_CREATIONDATE} {PHP.L.By} {FORUM_ROW_FIRSTPOSTER}
                  <!-- IF {FORUM_ROW_PAGES} -->{FORUM_ROW_PAGES}<!-- ENDIF -->
                </p>
              </td>
              <td>
                <p>{FORUM_ROW_UPDATED}</p>
                <p>{FORUM_ROW_TIMEAGO} {PHP.L.Ago} {PHP.L.By} {FORUM_ROW_LASTPOSTER}</p>
              </td>
              <td>{FORUM_ROW_POSTCOUNT}</td>
              <td>{FORUM_ROW_VIEWCOUNT}</td>
            </tr>
            <!-- END: TOPICS_ROW -->
            <!-- BEGIN: NO_TOPICS_FOUND -->
            <tr>
              <td class="center" colspan="5">{PHP.L.recentitems_nonewposts}</td>
            </tr>
            <!-- END: NO_TOPICS_FOUND -->
          </tbody>
        </table>
      </div>
<!-- END: MAIN -->
