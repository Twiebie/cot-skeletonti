<!-- BEGIN: MAIN -->
      <div class="jumbotron">
        <h1>Cotonti</h1>
        <p>{PHP.L.Tagline}</p>
        <p><a class="btn btn-lg btn-primary" href="http://www.cotonti.com" target="_blank">{PHP.L.View} &raquo;</a></p>
      </div>

      <div class="row">
        <!-- IF {INDEX_NEWS} -->
        <div class="col-md-8">
          {INDEX_NEWS}
        </div>
        <!-- ENDIF -->
        <!-- IF {RECENT_PAGES} -->
        <div class="col-sm-6 col-md-4">
          {RECENT_PAGES}
        </div>
        <!-- ENDIF -->
        <!-- IF {RECENT_FORUMS} -->
        <div class="col-sm-6 col-md-4">
          {RECENT_FORUMS}
        </div>
        <!-- ENDIF -->
      </div>
<!-- END: MAIN -->
