<!-- BEGIN: MAIN -->
      <div class="row">
        <div class="col-md-12">
          <h2>
            {USERS_DETAILS_NAME}
            <!-- BEGIN: USERS_DETAILS_ADMIN --> &nbsp; [ {USERS_DETAILS_ADMIN_EDIT} ]<!-- END: USERS_DETAILS_ADMIN -->
            <!-- IF {USERS_DETAILS_ONLINE} == 1 -->
            <span class="label label-success pull-right">{PHP.L.Online}</span>
            <!-- ELSE -->
            <span class="label label-default pull-right">{PHP.L.Offline}</span>
            <!-- ENDIF -->
          </h2>
        </div>
      </div>
      <div class="row">
        <div class="col-md-2">
          {USERS_DETAILS_AVATAR}
        </div>
        <div class="col-md-10">
          <table class="table table-striped">
          <!-- IF {PHP.usr.maingrp} > 0 AND {PHP.cot_modules.pm} -->
          <tr>
            <td>{PHP.L.users_sendpm}:</td>
            <td>{USERS_DETAILS_PM}</td>
          </tr>
          <!-- ENDIF -->
          <tr>
            <td>{PHP.L.Country}:</td>
            <td>{USERS_DETAILS_COUNTRYFLAG} {USERS_DETAILS_COUNTRY}</td>
          </tr>
          <tr>
            <td>{PHP.L.Maingroup}:</td>
            <td>{USERS_DETAILS_MAINGRP}</td>
          </tr>
          <tr>
            <td>{PHP.L.Groupsmembership}:</td>
            <td>{USERS_DETAILS_GROUPS}</td>
          </tr>
          <tr>
            <td>{PHP.L.Timezone}:</td>
            <td>{USERS_DETAILS_TIMEZONE}</td>
          </tr>
          <!-- IF {USERS_DETAILS_AGE} -->
          <tr>
            <td>{PHP.L.Age}:</td>
            <td>{USERS_DETAILS_AGE} <span class="text-muted">({USERS_DETAILS_BIRTHDATE})</span></td>
          </tr>
          <!-- ENDIF -->
          <!-- IF {USERS_DETAILS_GENDER} -->
          <tr>
            <td>{PHP.L.Gender}:</td>
            <td>{USERS_DETAILS_GENDER}</td>
          </tr>
          <!-- ENDIF -->
          <tr>
            <td>{PHP.L.Registered}:</td>
            <td>{USERS_DETAILS_REGDATE}</td>
          </tr>
          <tr>
            <td>{PHP.L.LastSeen}:</td>
            <td>{USERS_DETAILS_LASTLOG}</td>
          </tr>
          </table>
          <!-- IF {USERS_DETAILS_TEXT} -->
          <h4>{PHP.L.Signature}:</h4>
          <blockquote>
            <p>{USERS_DETAILS_TEXT}</p>
            <small>{USERS_DETAILS_NICKNAME}</small>
          </blockquote>
          <!-- ENDIF -->
        </div>
      </div>
<!-- END: MAIN -->