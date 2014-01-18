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
        <!-- IF {RECENT_PAGES} OR {RECENT_FORUMS} -->
        <div class="col-sm-5 col-md-4">
          <div class="row">
            <!-- IF {RECENT_PAGES} -->
            <div class="col-sm-12 pagerow">
              {RECENT_PAGES}
            </div>
            <!-- ENDIF -->
            <!-- IF {RECENT_FORUMS} -->
            <div class="col-sm-12 pagerow">
              {RECENT_FORUMS}
            </div>
            <!-- ENDIF -->
          </div>
        </div>
        <!-- ENDIF -->
      </div>
<!-- END: MAIN -->
