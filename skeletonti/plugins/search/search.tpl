<!-- BEGIN: MAIN -->
      <div class="row">
        <div class="col-md-6">
          <h2>{PLUGIN_TITLE}</h2>

          <form id="search" name="search" action="{PLUGIN_SEARCH_ACTION}" method="get" role="form">
            <input type="hidden" name="e" value="search">
            <div class="form-group">
              <div class="input-group">
                {PLUGIN_SEARCH_TEXT}
                <span class="input-group-btn">
                  <input type="submit" class="btn btn-primary" value="{PHP.L.plu_search_key}">
                </span>
              </div>
            </div>

            <div class="form-group btn-group">
              <a href="{PHP|cot_url('plug','e=search')}" class="btn btn-default<!-- IF !{PHP.tab} --> active<!-- ENDIF -->">{PHP.L.plu_tabs_all}</a>
              <!-- IF {PHP.cot_plugins_active.page} --><a href="{PHP|cot_url('plug','e=search&amp;tab=pag')}" class="btn btn-default<!-- IF {PHP.tab} == 'pag' --> active<!-- ENDIF -->">{PHP.L.Pages}</a><!-- ENDIF -->
              <!-- IF {PHP.cot_plugins_active.forums} --><a href="{PHP|cot_url('plug','e=search&amp;tab=frm')}" class="btn btn-default<!-- IF {PHP.tab} == 'frm' --> active<!-- ENDIF -->">{PHP.L.Forums}</a><!-- ENDIF -->
              <button type="button" class="btn btn-default" data-toggle="collapse" data-target="#search-filters">
                {PHP.L.Filter} <b class="caret"></b>
              </button>
            </div>

            <div id="search-filters" class="collapse">
              <div class="panel panel-default">
                <div class="panel-body">
                  <p><strong>{PHP.L.plu_other_date}:</strong></p>
                  <p>{PLUGIN_SEARCH_DATE_SELECT} {PLUGIN_SEARCH_DATE_FROM} - {PLUGIN_SEARCH_DATE_TO}</p>
                  <p><strong>{PHP.L.plu_other_userfilter}:</strong>{PLUGIN_SEARCH_USER}</p>
                </div>
              </div>
            </div>

            {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

            <!-- BEGIN: RESULTS -->
            <!-- BEGIN: PAGES -->
            <h3>{PHP.L.plu_result}: {PHP.L.plu_tabs_pag}</h3>
            <!-- BEGIN: ITEM -->
            <div class="panel panel-default">
              <div class="panel-heading">{PLUGIN_PR_TITLE}</div>
              <div class="panel-body">
                {PLUGIN_PR_TEXT}
              </div>
              <div class="panel-footer">
                <small>{PHP.L.plu_section}: {PLUGIN_PR_CATEGORY}</small><br>
                <small>{PHP.L.plu_last_date}: {PLUGIN_PR_TIME}</small>
              </div>
            </div>
            <!-- END: ITEM -->
            <!-- END: PAGES -->

            <!-- BEGIN: FORUMS -->
            <h3>{PHP.L.plu_result}: {PHP.L.plu_tabs_frm}</h3>
            <!-- BEGIN: ITEM -->
            <div class="panel panel-default">
              <div class="panel-heading">{PLUGIN_FR_TITLE}</div>
              <div class="panel-body">
                <!-- IF {PLUGIN_FR_TEXT} -->
                {PLUGIN_FR_TEXT}
                <!-- ENDIF -->
              </div>
              <div class="panel-footer">
                <small>{PHP.L.plu_section}: {PLUGIN_FR_CATEGORY}</small><br>
                <small>{PHP.L.plu_last_date}: {PLUGIN_FR_TIME}</small>
              </div>
            </div>
            <!-- END: ITEM -->
            <!-- END: FORUMS -->
            <!-- END: RESULTS -->

            <!-- IF {PLUGIN_PAGENAV} -->
            <ul class="pagination">{PLUGIN_PAGEPREV}{PLUGIN_PAGENAV}{PLUGIN_PAGENEXT}</ul>
            <!-- ENDIF -->
        </div>

        <!-- IF {PHP.cfg.plugin.search.extrafilters} -->
        <div class="col-md-6">
          <h3>{PHP.L.Filter}</h3>
          <!-- BEGIN: PAGES_OPTIONS -->
          <div class="panel panel-default">
            <div class="panel-heading">{PHP.L.Pages}</div>
            <div class="panel-body">
              <div class="col-md-6">
                <strong>{PHP.L.plu_pag_set_sec}:</strong>
                <p>{PLUGIN_PAGE_SEC_LIST}</p>
                <p>{PLUGIN_PAGE_SEARCH_SUBCAT}</p>
                <small>{PHP.L.plu_ctrl_list}</small>
              </div>
              <div class="col-md-6">
                <strong>{PHP.L.plu_other_opt}:</strong>
                <p><label>{PLUGIN_PAGE_SEARCH_NAMES} {PHP.L.plu_pag_search_names}</label></p>
                <p>{PLUGIN_PAGE_SEARCH_DESC}</p>
                <p>{PLUGIN_PAGE_SEARCH_TEXT}</p>
                <p>{PLUGIN_PAGE_SEARCH_FILE}</p>
                <strong>{PHP.L.plu_res_sort}:</strong>
                <p>{PLUGIN_PAGE_RES_SORT}</p>
                <p>{PLUGIN_PAGE_RES_SORT_WAY}</p>
              </div>
            </div>
          </div>
          <!-- END: PAGES_OPTIONS -->

          <!-- BEGIN: FORUMS_OPTIONS -->
          <div class="panel panel-default">
            <div class="panel-heading">{PHP.L.Forums}</div>
            <div class="panel-body">
              <div class="col-md-6">
                <strong>{PHP.L.plu_frm_set_sec}:</strong>
                <p>{PLUGIN_FORUM_SEC_LIST}</p>
                <p>{PLUGIN_FORUM_SEARCH_SUBCAT}</p>
                <small>{PHP.L.plu_ctrl_list}</small>
              </div>
              <div class="col-md-6">
                <strong>{PHP.L.plu_other_opt}:</strong>
                <p>{PLUGIN_FORUM_SEARCH_NAMES}</p>
                <p>{PLUGIN_FORUM_SEARCH_POST}</p>
                <p>{PLUGIN_FORUM_SEARCH_ANSW}</p>
                <strong>{PHP.L.plu_res_sort}:</strong>
                <p>{PLUGIN_FORUM_RES_SORT}</p>
                <p>{PLUGIN_FORUM_RES_SORT_WAY}</p>
              </div>
            </div>
          </div>
          <!-- END: FORUMS_OPTIONS -->
        </div>
        <!-- ENDIF -->

          </form>
      </div><!-- /.row -->
<!-- END: MAIN -->
