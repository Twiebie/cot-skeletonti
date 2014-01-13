<!-- BEGIN: MAIN -->
      <div class="page-header">
        <h1>{FORUMS_TOPICS_SHORTTITLE}</h1>
        <p>{FORUMS_TOPICS_PAGETITLE}</p>
      </div>

      <!-- BEGIN: FORUMS_SECTIONS -->
      <div class="table-responsive">
        <table class="table table-striped">
          <thead>
            <th></th>
            <th>{PHP.L.Subforums}</th>
            <th>{PHP.L.Lastpost}</th>
            <th>{PHP.L.forums_posts}</th>
            <th>{PHP.L.forums_topics}</th>
          </thead>
          <!-- BEGIN: FORUMS_SECTIONS_ROW_SECTION -->
          <tr>
            <td class="middle">
              <center>{PHP.R.icon_subfolder}</center>
            </td>
            <td>
              <h4><a href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a></h4>
              <small>{FORUMS_SECTIONS_ROW_DESC}</small>
            </td>
            <td>
              <!-- IF {FORUMS_SECTIONS_ROW_LASTPOST} -->
              {FORUMS_SECTIONS_ROW_LASTPOST}
              <p>{FORUMS_SECTIONS_ROW_TIMEAGO} {PHP.L.Ago} {PHP.L.By} {FORUMS_SECTIONS_ROW_LASTPOSTER}</p>
              <!-- ELSE -->
              <span class="text-muted">{PHP.L.None}</span>
              <!-- ENDIF -->
            </td>
            <td>
              {FORUMS_SECTIONS_ROW_POSTCOUNT}
            </td>
            <td>
              {FORUMS_SECTIONS_ROW_TOPICCOUNT}
            </td>
          </tr>
          <!-- END: FORUMS_SECTIONS_ROW_SECTION -->
        </table>
      </div>
      <hr>
      <!-- END: FORUMS_SECTIONS -->

      <div class="clearfix">
        <ul class="list-inline pull-right">
          <li><a href="{FORUMS_TOPICS_NEWTOPICURL}" rel="nofollow" class="btn btn-primary">{PHP.L.forums_newtopic}</a></li>
          <!-- BEGIN: FORUMS_SECTIONS_POLLS -->
          <li><a href="{FORUMS_TOPICS_NEWPOLLURL}" rel="nofollow" class="btn btn-default">{PHP.L.forums_newpoll}</a></li>
          <!-- END: FORUMS_SECTIONS_POLLS -->
        </ul>
      </div>

      <!-- IF {FORUMS_TOPICS_PAGEONPAGE} > 0 -->
      <div class="table-responsive">
        <table class="table table-striped">
          <thead>
            <th></th>
            <th>{FORUMS_TOPICS_TITLE_TOPICS} / {FORUMS_TOPICS_TITLE_STARTED}</th>
            <th>{FORUMS_TOPICS_TITLE_LASTPOST}</th>
            <th>{FORUMS_TOPICS_TITLE_POSTS}</th>
            <th>{FORUMS_TOPICS_TITLE_VIEWS}</th>
          </thead>
          <!-- BEGIN: FORUMS_TOPICS_ROW -->
          <tr>
            <td class="middle">
              <center>{FORUMS_TOPICS_ROW_ICON}</center>
            </td>
            <td>
              <h4><a href="{FORUMS_TOPICS_ROW_URL}" title="{FORUMS_TOPICS_ROW_PREVIEW}">{FORUMS_TOPICS_ROW_TITLE}</a></h4>
              <!-- IF {FORUMS_TOPICS_ROW_DESC} --><p>{FORUMS_TOPICS_ROW_DESC}</p><!-- ENDIF -->
              <small>{FORUMS_TOPICS_ROW_CREATIONDATE} {PHP.L.By} {FORUMS_TOPICS_ROW_FIRSTPOSTER}</small>
              <small>{FORUMS_TOPICS_ROW_PAGES}</small>
            </td>
            <td class="middle">
              {FORUMS_TOPICS_ROW_UPDATED}
              <p>{FORUMS_TOPICS_ROW_TIMEAGO} {PHP.L.Ago} {PHP.L.By} {FORUMS_TOPICS_ROW_LASTPOSTER}</p>
            </td>
            <td class="middle">
              {FORUMS_TOPICS_ROW_POSTCOUNT}
            </td>
            <td class="middle">
              {FORUMS_TOPICS_ROW_VIEWCOUNT}
            </td>
          </tr>
          <!-- END: FORUMS_TOPICS_ROW -->
        </table>
      </div>
      <!-- IF {FORUMS_TOPICS_PAGES} -->
      <ul class="pagination">
        {FORUMS_TOPICS_PAGEPREV}{FORUMS_TOPICS_PAGES}{FORUMS_TOPICS_PAGENEXT}
      </ul>
      <!-- ENDIF -->
      <!-- ELSE -->
      <div class="alert alert-info">{PHP.L.Notopics}</div>
      <!-- ENDIF -->

      <ul class="nav nav-tabs">
        <li class="active"><a href="#forums-online" data-toggle="tab">{PHP.L.Viewers}</a></li>
        <li><a href="#forums-help" data-toggle="tab">{PHP.L.Help}</a></li>
      </ul>

      <div class="tab-content forums-tab">
        <div class="tab-pane fade in active" id="forums-online">
          <h4>{PHP.L.forums_viewers}:</h4>
          <p>{FORUMS_TOPICS_VIEWER_NAMES}</p>
        </div>
        <div class="tab-pane fade" id="forums-help">
          <div class="row">
            <div class="col-sm-4">
              <ul class="list-unstyled">
                <li>{PHP.R.forums_icon_posts} {PHP.L.forums_nonewposts}</li>
                <li>{PHP.R.forums_icon_posts_new} {PHP.L.forums_newposts}</li>
                <li>{PHP.R.forums_icon_posts_hot} {PHP.L.forums_nonewpostspopular}</li>
                <li>{PHP.R.forums_icon_posts_new_hot} {PHP.L.forums_newpostspopular}</li>
              </ul>
            </div>
            <div class="col-sm-4">
              <ul class="list-unstyled">
                <li>{PHP.R.forums_icon_posts_sticky} {PHP.L.forums_sticky}</li>
                <li>{PHP.R.forums_icon_posts_new_sticky} {PHP.L.forums_newpostssticky}</li>
                <li>{PHP.R.forums_icon_posts_locked} {PHP.L.forums_locked}</li>
                <li>{PHP.R.forums_icon_posts_new_locked} {PHP.L.forums_newpostslocked}</li>
              </ul>
            </div>
            <div class="col-sm-4">
              <ul class="list-unstyled">
                <li>{PHP.R.forums_icon_posts_sticky_locked} {PHP.L.forums_announcment}</li>
                <li>{PHP.R.forums_icon_posts_new_sticky_locked} {PHP.L.forums_newannouncment}</li>
                <li>{PHP.R.forums_icon_posts_moved} {PHP.L.forums_movedoutofthissection}</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
<!-- END: MAIN -->
