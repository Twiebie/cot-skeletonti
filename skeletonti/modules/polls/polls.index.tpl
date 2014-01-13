      <!-- BEGIN: POLL_VIEW -->
      <div id="poll_{POLL_ID}">
        <form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" class="ajax post-poll_{POLL_ID};index.php;e=polls&amp;mode=ajax&amp;poll_theme=index" role="form">
          <input type="hidden" name="poll_id" value="{POLL_ID}">
          <table>
            <!-- BEGIN: POLLTABLE -->
            <tr>
              <td>{POLL_INPUT}</td>
              <td>{POLL_OPTIONS}</td>
            </tr>
            <!-- END: POLLTABLE -->
            <tr>
              <td></td>
              <td><button type="submit" title="{PHP.L.polls_Vote}" class="btn btn-primary">{PHP.L.polls_Vote}</button></td>
            </tr>
          </table>
        </form>
      </div>
      <!-- END: POLL_VIEW -->

      <!-- BEGIN: POLL_VIEW_VOTED -->
      <table class="table table-borderless">
        <!-- BEGIN: POLLTABLE -->
        <tr>
          <td>
            <strong>{POLL_OPTIONS}</strong>
            <small class="pull-right">{POLL_PER}% ({POLL_COUNT})</small>
            <div class="progress">
              <div class="progress-bar" role="progressbar" aria-valuenow="{POLL_PER}}" aria-valuemin="0" aria-valuemax="100" style="width: {POLL_PER}%;">
                <span>{POLL_PER}%</span>
              </div>
            </div>
          </td>
        </tr>
        <!-- END: POLLTABLE -->
      </table>
      <script>
        function anim(){
          $(".progress").each(function(){
            var percentage = $(this).width();
            if (percentage!=""){$(this).width(0).animate({width: percentage}, "slow");}
          });
        }
        anim();
      </script>
      <small class="pull-right">{PHP.L.Votes}: {POLL_VOTERS}</small>
      <!-- END: POLL_VIEW_VOTED -->

      <!-- BEGIN: POLL_VIEW_DISABLED -->
      <table class="table table-borderless">
        <!-- BEGIN: POLLTABLE -->
        <tr>
          <td>{POLL_OPTIONS}</td>
        </tr>
        <!-- END: POLLTABLE -->
        <tr>
          <td>{PHP.L.rat_registeredonly}</td>
        </tr>
      </table>
      <!-- END: POLL_VIEW_DISABLED -->

      <!-- BEGIN: POLL_VIEW_LOCKED -->
      <table class="table table-borderless">
        <!-- BEGIN: POLLTABLE -->
        <tr>
          <td>
            <strong>{POLL_OPTIONS}</strong>
            <span class="pull-right">{POLL_PER}% ({POLL_COUNT})</span>
            <div class="progress">
              <div class="progress-bar" role="progressbar" aria-valuenow="{POLL_PER}}" aria-valuemin="0" aria-valuemax="100" style="width: {POLL_PER}%;">
                <span>{POLL_PER}%</span>
              </div>
            </div>
          </td>
        </tr>
        <!-- END: POLLTABLE -->
      </table>
      <p>{PHP.L.Date} {POLL_SINCE_SHORT} {PHP.L.Votes} {POLL_VOTERS}</p>
      <!-- END: POLL_VIEW_LOCKED -->

      <!-- BEGIN: INDEXPOLLS -->
      <!-- BEGIN: POLL -->
      <h3><a href="{IPOLLS_URL}">{IPOLLS_TITLE}</a></h3>
      {IPOLLS_FORM}
      <!-- END: POLL -->
      <!-- BEGIN: ERROR -->
      <p><center>{IPOLLS_ERROR}</center></p>
      <!-- END: ERROR -->
      <p><center><a href="{IPOLLS_ALL}">{PHP.L.polls_viewarchives}</a></center></p>
      <!-- END: INDEXPOLLS -->
