<!-- BEGIN: MAIN -->
      <!-- BEGIN: FORUMS_POSTS_TOPICPRIVATE -->
      <div class="alert alert-warning">{PHP.L.forums_privatetopic}</div>
      <!-- END: FORUMS_POSTS_TOPICPRIVATE -->

      <!-- BEGIN: POLLS_VIEW -->
      <h3>{POLLS_TITLE}</h3>
      {POLLS_FORM}
      <!-- END: POLLS_VIEW -->

      <h3>{FORUMS_POSTS_PAGETITLE}</h3>
      <!-- BEGIN: FORUMS_POSTS_ADMIN -->
      <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#admin-forum-options">
        {PHP.L.Moderation} <b class="caret"></b>
      </button>
      <div id="admin-forum-options" class="collapse">
        <form id="movetopic" action="{FORUMS_POSTS_MOVE_URL}" method="post" role="form">
          <ul class="list-inline">
            <h5>{PHP.L.forums_topicoptions}:</h5>
            <li>
              <a href="{FORUMS_POSTS_BUMP_URL}" title="{PHP.L.forums_explainbump}" class="btn btn-default btn-sm">{PHP.L.forums_bump}</a>
            </li>
            <li>
              <a href="{FORUMS_POSTS_LOCK_URL}" title="{PHP.L.forums_explainlock}" class="btn btn-default btn-sm">{PHP.L.Lock}</a>
            </li>
            <li>
              <a href="{FORUMS_POSTS_STICKY_URL}" title="{PHP.L.forums_explainsticky}" class="btn btn-default btn-sm">{PHP.L.forums_makesticky}</a>
            </li>
            <li>
              <a href="{FORUMS_POSTS_ANNOUNCE_URL}" title="{PHP.L.forums_explainannounce}" class="btn btn-default btn-sm">{PHP.L.forums_announcement}</a>
            </li>
            <li>
              <a href="{FORUMS_POSTS_PRIVATE_URL}" title="{PHP.L.forums_explainprivate}" class="btn btn-default btn-sm">{PHP.L.forums_private} (#)</a>
            </li>
            <li>
              <a href="{FORUMS_POSTS_CLEAR_URL}" title="{PHP.L.forums_explaindefault}" class="btn btn-default btn-sm">{PHP.L.Default}</a>
            </li>
            <li>
              <a href="{FORUMS_POSTS_DELETE_URL}" title="{PHP.L.forums_explaindelete}" class="btn btn-danger btn-sm confirmLink">{PHP.L.Delete}</a>
            </li>
          </ul>
          <ul class="list-inline">
            <h5>{PHP.L.Move}:</h5>
            <li>{FORUMS_POSTS_MOVEBOX_SELECT}</li>
            <li>{FORUMS_POSTS_MOVEBOX_KEEP}</li>
            <li>{PHP.L.forums_keepmovedlink}</li>
            <li><button type="submit" class="btn btn-default btn-sm">{PHP.L.Move}</button></li>
          </ul>
        </form>
      </div>
      <!-- END: FORUMS_POSTS_ADMIN -->

      <table class="table table-striped">
        <thead>
          <th>{PHP.L.Author}</th>
          <th>{PHP.L.Message}</th>
        </thead>
        <!-- BEGIN: FORUMS_POSTS_ROW -->
        <tr>
          <td class="forum-poster center">
            {FORUMS_POSTS_ROW_ANCHORLINK}
            <h4>{FORUMS_POSTS_ROW_USERNAME}</h4>
            <p>
            <!-- IF {FORUMS_POSTS_ROW_USERAVATAR} -->
            <a href="{FORUMS_POSTS_ROW_USERDETAILSLINK}">
              {FORUMS_POSTS_ROW_USERAVATAR}
            </a>
            <!-- ELSE -->
            {PHP.R.forums_noavatar}
            <!-- ENDIF -->
            <p>{FORUMS_POSTS_ROW_USERMAINGRPTITLE}</p>
            <!-- IF {FORUMS_POSTS_ROW_USERONLINE} == 1 -->
            <p class="label label-success">{FORUMS_POSTS_ROW_USERONLINETITLE}</p>
            <!-- ENDIF -->
            </p>
          </td>
          <td class="forum-post">
            <ul class="list-inline">
              <li>
                <a name="{FORUMS_POSTS_ROW_ID}" id="{FORUMS_POSTS_ROW_POSTID}" href="{FORUMS_POSTS_ROW_IDURL}" rel="nofollow">#{FORUMS_POSTS_ROW_ORDER}</a>
              </li>
              <li>{FORUMS_POSTS_ROW_CREATION}</li>
              <!-- IF {FORUMS_POSTS_ROW_POSTERIP} -->
              <li>{FORUMS_POSTS_ROW_POSTERIP}</li>
              <!-- ENDIF -->
              <!-- IF {FORUMS_POSTS_ROW_QUOTE} -->
              <li>{FORUMS_POSTS_ROW_QUOTE}</li>
              <!-- ENDIF -->
              <!-- IF {FORUMS_POSTS_ROW_EDIT} -->
              <li>{FORUMS_POSTS_ROW_EDIT}</li>
              <!-- ENDIF -->
              <!-- IF {FORUMS_POSTS_ROW_DELETE} -->
              <li>{FORUMS_POSTS_ROW_DELETE}</li>
              <!-- ENDIF -->
            </ul>

            {FORUMS_POSTS_ROW_TEXT}

            <!-- IF {FORUMS_POSTS_ROW_UPDATEDBY} -->
            <p class="text-muted">{FORUMS_POSTS_ROW_UPDATEDBY}</p>
            <!-- ENDIF -->
            <!-- IF {FORUMS_POSTS_ROW_USERTEXT} -->
            <p class="forum-signature">
              {FORUMS_POSTS_ROW_USERTEXT}
            </p>
            <!-- ENDIF -->
          </td>
        </tr>
        <!-- END: FORUMS_POSTS_ROW -->
      </table>

      <!-- IF {FORUMS_POSTS_PAGES} -->
      <ul class="pagination">{FORUMS_POSTS_PAGEPREV} {FORUMS_POSTS_PAGES} {FORUMS_POSTS_PAGENEXT}</ul>
      <!-- ENDIF -->

      <!-- BEGIN: FORUMS_POSTS_TOPICLOCKED -->
      <div class="alert alert-info">{FORUMS_POSTS_TOPICLOCKED_BODY}</div>
      <!-- END: FORUMS_POSTS_TOPICLOCKED -->

      <!-- BEGIN: FORUMS_POSTS_ANTIBUMP -->
      <p>{FORUMS_POSTS_ANTIBUMP_BODY}</p>
      <!-- END: FORUMS_POSTS_ANTIBUMP -->

      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

      <!-- BEGIN: FORUMS_POSTS_NEWPOST -->
      <form action="{FORUMS_POSTS_NEWPOST_SEND}" method="post" name="newpost" role="form">
        {FORUMS_POSTS_NEWPOST_TEXT}
        {FORUMS_POSTS_NEWPOST_MYPFS}
        <p class="center">
          <button type="submit" class="btn btn-primary">{PHP.L.Reply}</button>
        </p>
      </form>
      <!-- END: FORUMS_POSTS_NEWPOST -->
<!-- END: MAIN -->
