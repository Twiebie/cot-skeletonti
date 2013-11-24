<!-- BEGIN: MAIN -->
      <h2>{PASSRECOVER_TITLE}</h2>
      <!-- IF {PHP.msg} == 'request' --><p>{PHP.L.pasrec_mailsent}</p><!-- ENDIF -->
      <!-- IF {PHP.msg} == 'auth' --><p>{PHP.L.pasrec_mailsent2}</p><!-- ENDIF -->
      <!-- IF !{PHP.msg} -->
      <ol>
        <li>{PHP.L.pasrec_explain1}</li>
        <li>{PHP.L.pasrec_explain2}</li>
        <li>{PHP.L.pasrec_explain3}</li>
      </ol>

      <form name="reqauth" action="{PASSRECOVER_URL_FORM}" method="post" class="form-horizontal" role="form">
        <div class="form-group">
          <label class="col-md-2 control-label">{PHP.L.pasrec_youremail}</label>
          <div class="col-md-4">
            <input type="email" name="email" class="form-control" value="" size="20" maxlength="64">
          </div>
        </div>
        <div class="form-group">
          <div class="col-md-offset-2 col-md-10">
            <input type="submit" class="btn btn-primary" value="{PHP.L.pasrec_request}">
          </div>
        </div>
      </form>

      <div class="alert alert-info">{PHP.L.pasrec_explain4}</div>
      <!-- ENDIF -->
<!-- END: MAIN -->