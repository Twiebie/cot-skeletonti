<!-- BEGIN: MAIN -->
      <h2>{FORUMS_SECTIONS_PAGETITLE}</h2>
      <!-- BEGIN: FORUMS_SECTIONS -->
      <div class="table-responsive">
        <table class="table table-striped">
          <thead>
            <th>&nbsp;</th>
            <th>
              <a href="{PHP|cot_url('forums','c=fold#top')}" rel="nofollow">{PHP.L.forums_foldall}</a> /
              <a href="{PHP|cot_url('forums','c=unfold#top')}" rel="nofollow">{PHP.L.forums_unfoldall}</a>
            </th>
            <th>{PHP.L.Lastpost}</th>
            <th>{PHP.L.forums_topics}</th>
            <th>{PHP.L.forums_posts}</th>
            <th class="center">{PHP.L.Activity}</th>
          </thead>
          <!-- BEGIN: CAT -->
          <thead id="{FORUMS_SECTIONS_ROW_CAT}">
            <tr>
              <th colspan="6">
                <a href="{FORUMS_SECTIONS_ROW_SECTIONSURL}" onclick="return toggleblock('blk_{FORUMS_SECTIONS_ROW_CAT}')">{FORUMS_SECTIONS_ROW_TITLE}</a>
              </th>
            </tr>
          </thead>
          <tbody id="blk_{FORUMS_SECTIONS_ROW_CAT}"<!-- IF {FORUMS_SECTIONS_ROW_FOLD} --> style="display:none;"<!-- ENDIF -->>
            <!-- BEGIN: SECTION -->
            <tr>
              <td class="middle center">
                {FORUMS_SECTIONS_ROW_ICON}
              </td>
              <td>
                <h4><a href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a></h4>
                <!-- IF {FORUMS_SECTIONS_ROW_DESC} -->
                <small>{FORUMS_SECTIONS_ROW_DESC}</small>
                <!-- ENDIF -->
                <ul class="list-unstyled">
                  <!-- BEGIN: SUBSECTION -->
                  <li>{PHP.R.forums_icon_subforum} <a href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a></li>
                  <!-- END: SUBSECTION -->
                </ul>
              </td>
              <td>
                <!-- IF {FORUMS_SECTIONS_ROW_LASTPOST} -->
                {FORUMS_SECTIONS_ROW_LASTPOST}<br>
                {FORUMS_SECTIONS_ROW_LASTPOSTDATE} {FORUMS_SECTIONS_ROW_LASTPOSTER}
                <!-- ELSE -->
                <span class="text-muted">{PHP.L.None}</span>
                <!-- ENDIF -->
              </td>
              <td>{FORUMS_SECTIONS_ROW_TOPICCOUNT}</td>
              <td>{FORUMS_SECTIONS_ROW_POSTCOUNT}</td>
              <td class="middle center">{FORUMS_SECTIONS_ROW_ACTIVITY}</td>
            </tr>
            <!-- END: SECTION -->
          </tbody>
          <!-- END: CAT -->
        </table>
      </div>
      <!-- END: FORUMS_SECTIONS -->
      <hr>
      <ul class="list-inline center">
        <li>
          <a href="{PHP|cot_url('plug','e=search&amp;tab=frm')}" class="btn btn-default">{PHP.L.forums_searchinforums}</a>
        </li>
        <li>
          <a href="{PHP|cot_url('forums','n=markall')}" rel="nofollow" class="btn btn-default">{PHP.L.forums_markasread}</a>
        </li>
      </ul>
      <!-- IF {PHP.cfg.plugin.tags.forums} -->
      <div class="panel panel-default">
        <div class="panel-heading">{PHP.L.Tags}</div>
        <div class="panel-body">
        {FORUMS_SECTIONS_TAG_CLOUD}
        </div>
      </div>
      <!-- ENDIF -->
<!-- END: MAIN -->