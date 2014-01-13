<!-- BEGIN: MAIN -->
      <div id="ajaxBlock">
        <div class="page-header">
          <h1>{PHP.L.i18n_structure}</h1>
        </div>

        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <form action="{I18N_ACTION}" method="post" role="form">
          <table class="table">
            <thead>
              <th>{I18N_ORIGINAL_LANG}</th>
              <th>{I18N_TARGET_LANG}</th>
            </thead>
            <tbody>
              <!-- BEGIN: I18N_CATEGORY_ROW -->
              <tr>
                <td>
                  <h4>{I18N_CATEGORY_ROW_TITLE}</h4>
                  <em>{I18N_CATEGORY_ROW_DESC}</em>
                  <input type="hidden" name="{I18N_CATEGORY_ROW_CODE_NAME}" value="{I18N_CATEGORY_ROW_CODE_VALUE}">
                </td>
                <td>
                  <div class="form-group">
                  <input type="text" name="{I18N_CATEGORY_ROW_ITITLE_NAME}" class="form-control" value="{I18N_CATEGORY_ROW_ITITLE_VALUE}" maxlength="128" size="64">
                  </div>
                  <div class="form-group">
                    <textarea name="{I18N_CATEGORY_ROW_IDESC_NAME}" class="form-control" rows="4" cols="64">{I18N_CATEGORY_ROW_IDESC_VALUE}</textarea>
                  </div>
                </td>
              </tr>
              <!-- END: I18N_CATEGORY_ROW -->
              <tbody>
              <tfoot>
                <td>&nbsp;</td>
                <td><input type="submit" value="{PHP.L.Update}" class="btn btn-primary"></td>
              </tr>
            </tfoot>
          </table>
        </form>
        <!-- IF {I18N_PAGNAV} -->
        <ul class="pagination">{I18N_PAGINATION_PREV}{I18N_PAGNAV}{I18N_PAGINATION_NEXT}</ul>
        <!-- ENDIF -->
      </div>
<!-- END: MAIN -->
