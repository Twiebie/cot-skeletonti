<!-- BEGIN: MAIN -->
      <h3><a href="{PHP|cot_url('forums')}">{PHP.L.Forums}</a></h3>
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
              <td>{FORUM_ROW_ICON}</td>
              <td>
                <h4><a href="{FORUM_ROW_URL}">{FORUM_ROW_TITLE}</a></h4>
                <p>{FORUM_ROW_PATH}</p>
                <p>
                  {FORUM_ROW_CREATIONDATE}<span class="spaced">{PHP.cfg.separator}</span>{FORUM_ROW_FIRSTPOSTER}<!-- IF {FORUM_ROW_PAGES} --><span class="spaced">{PHP.cfg.separator}</span>{FORUM_ROW_PAGES}<!-- ENDIF -->
                </p>
              </td>
              <td>
                {FORUM_ROW_UPDATED}<span class="spaced">{PHP.cfg.separator}</span>{FORUM_ROW_LASTPOSTER}<br />
                {FORUM_ROW_TIMEAGO}
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
