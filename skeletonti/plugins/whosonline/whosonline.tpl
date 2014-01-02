<!-- BEGIN: MAIN -->
      <h2><a href="{PHP|cot_url('plug','e=whosonline')}">{PHP.L.WhosOnline}</a></h2>
      <p><strong>{PHP.L.NowOnline}:</strong> <!-- IF {STAT_COUNT_USERS} -->{STAT_COUNT_USERS} {USERS}, <!-- ENDIF --><!-- IF !{PHP.cfg.plugin.whosonline.disable_guests} -->{STAT_COUNT_GUESTS} {GUESTS}<!-- ENDIF --></p>
      <div class="table-responsive">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>{PHP.L.User}</th>
              <th>{PHP.L.Group}</th>
              <th>{PHP.L.Location}</th>
              <th>{PHP.L.LastSeen}</th>
              <!-- IF {PHP.usr.isadmin} --><th>{PHP.L.IPaddress}</th><!-- ENDIF -->
            </tr>
          </thead>
          <tbody>
            <!-- BEGIN: USERS -->
            <tr>
              <td>{USER_LINK}</td>
              <td>{USER_MAINGRP}</td>
              <td>{USER_LOCATION} {USER_SUBLOCATION}</td>
              <td>{USER_LASTSEEN}</td>
              <!-- IF {PHP.usr.isadmin} --><td>{USER_IP}</td><!-- ENDIF -->
            </tr>
            <!-- END: USERS -->
            <!-- BEGIN: GUESTS -->
            <tr>
              <td colspan="2">{PHP.L.Visitor} #{GUEST_NUMBER}</td>
              <td>{GUEST_LOCATION} {GUEST_SUBLOCATION}</td>
              <td>{GUEST_LASTSEEN}</td>
              <!-- IF {PHP.usr.isadmin} --><td>{GUEST_IP}</td><!-- ENDIF -->
            </tr>
            <!-- END: GUESTS -->
          </tbody>
        </table>
      </div>
      <!-- IF {WHO_TOTALPAGES} > 1 -->
      <ul class="pagination">{WHO_PAGEPREV}{WHO_PAGINATION}{WHO_PAGENEXT}</p>
      <p>{PHP.L.Page} {WHO_CURRENTPAGE} {PHP.L.Of} {WHO_TOTALPAGES}</p>
      <!-- ENDIF -->
      <!-- IF {STAT_MAXUSERS} --><p><strong>{PHP.L.MostOnline}:</strong> {STAT_MAXUSERS}</p><!-- ENDIF -->
<!-- END: MAIN -->
