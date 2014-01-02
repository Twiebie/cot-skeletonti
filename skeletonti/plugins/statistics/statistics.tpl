<!-- BEGIN: MAIN -->
      <div class="row">
        <div class="col-md-12">
          <h2>{PHP.L.Statistics}</h2>
          <h3>{PHP.L.Main}:</h3>
          <div class="alert alert-info">{PHP.L.plu_maxwasreached} <strong>{STATISTICS_MAX_DATE}</strong>, <strong>{STATISTICS_MAX_HITS}</strong> {PHP.L.plu_pagesdisplayedthisday}</div>
          <table class="table table-striped">
            <tr>
              <td>{PHP.L.plu_totalpagessince} {STATISTICS_SINCE}</td>
              <td class="right">{STATISTICS_TOTALPAGES}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_registeredusers}</td>
              <td class="right">{STATISTICS_TOTALDBUSERS}</td>
            </tr>
            <tr>
              <td>{PHP.L.Pages}</td>
              <td class="right">{STATISTICS_TOTALDBPAGES}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_totalmails}</td>
              <td class="right">{STATISTICS_TOTALMAILSENT}</td>
            </tr>
            <tr>
              <td>{PHP.L.comments_comments}</td>
              <td class="right">{STATISTICS_TOTALDBCOMMENTS}</td>
            </tr>
          </table>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <h3>{PHP.L.Private_Messages}:</h3>
          <table class="table table-striped">
            <tr>
              <td>{PHP.L.plu_totalpms}</td>
              <td class="right">{STATISTICS_TOTALPMSENT}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_totalactivepms}</td>
              <td class="right">{STATISTICS_TOTALPMACTIVE}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_totalarchivedpms}</td>
              <td class="right">{STATISTICS_TOTALPMARCHIVED}</td>
            </tr>
          </table>
        </div>
        <div class="col-md-6">
          <h3>{PHP.L.Forums}:</h3>
          <table class="table table-striped">
            <tr>
              <td>{PHP.L.plu_viewsforums}</td>
              <td class="right">{STATISTICS_TOTALDBVIEWS}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_postsforums}</td>
              <td class="right">{STATISTICS_TOTALDBPOSTS}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_topicsforums}</td>
              <td class="right">{STATISTICS_TOTALDBTOPICS}</td>
            </tr>
          </table>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <h3>{PHP.L.plu_pollsratings}:</h3>
          <table class="table table-striped">
            <tr>
              <td>{PHP.L.plu_pagesrated}</td>
              <td class="right">{STATISTICS_TOTALDBRATINGS}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_votesratings}</td>
              <td class="right">{STATISTICS_TOTALDBRATINGSVOTES}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_polls}</td>
              <td class="right">{STATISTICS_TOTALDBPOLLS}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_votespolls}</td>
              <td class="right">{STATISTICS_TOTALDBPOLLSVOTES}</td>
            </tr>
          </table>
        </div>
        <div class="col-md-6">
          <h3>{PHP.L.PFS}:</h3>
          <table class="table table-striped">
            <tr>
              <td>{PHP.L.plu_pfsspace}</td>
              <td class="right">{STATISTICS_TOTALDBFILES}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_pfssize}, {PHP.L.kb}</td>
              <td class="right">{STATISTICS_TOTALDBFILESIZE}</td>
            </tr>
          </table>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <h3>{PHP.L.plu_contributions}:</h3>
          <table class="table table-striped">
            <!-- BEGIN: IS_USER -->
            <tr>
              <td>{PHP.L.forums_posts}</td>
              <td class="right">{STATISTICS_USER_POSTSCOUNT}</td>
            </tr>
            <tr>
              <td>{PHP.L.forums_topics}</td>
              <td class="right">{STATISTICS_USER_TOPICSCOUNT}</td>
            </tr>
            <tr>
              <td>{PHP.L.comments_comments}</td>
              <td class="right">{STATISTICS_USER_COMMENTS}</td>
            </tr>
            <!-- END: IS_USER -->
            <!-- BEGIN: IS_NOT_USER -->
            <tr>
              <td>{PHP.L.plu_notloggedin}</td>
            </tr>
            <!-- END: IS_NOT_USER -->
          </table>
        </div>
        <div class="col-md-6">
          <h3>{PHP.L.plu_membersbycountry}:</h3>
          <table class="table table-striped">
            <thead>
              <th>{PHP.L.plu_flag}</th>
              <th><a href="{STATISTICS_PLU_URL}">{PHP.cot_img_down}</a> {PHP.L.Country}</th>
              <th class="right"><a href="{STATISTICS_SORT_BY_USERCOUNT}" rel="nofollow">{PHP.cot_img_down}</a> {PHP.L.Users}</th>
            </thead>
            <tbody>
              <!-- BEGIN: ROW_COUNTRY -->
              <tr>
                <td>{STATISTICS_COUNTRY_FLAG}</td>
                <td>{STATISTICS_COUNTRY_NAME}</td>
                <td class="right">{STATISTICS_COUNTRY_COUNT}</td>
              </tr>
              <!-- END: ROW_COUNTRY -->
              <tr>
                <td class="left"><span class="glyphicon glyphicon-question-sign"></span></td>
                <td>{PHP.L.plu_unknown}</td>
                <td class="right">{STATISTICS_UNKNOWN_COUNT}</td>
              </tr>
              <tr>
                <td colspan="2" class="left">{PHP.L.Total}:</td>
                <td class="right">{STATISTICS_TOTALUSERS}</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
<!-- END: MAIN -->
