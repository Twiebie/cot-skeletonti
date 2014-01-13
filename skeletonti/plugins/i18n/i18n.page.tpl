<!-- BEGIN: MAIN -->
      <div class="page-header">
        <h1>{I18N_TITLE}</h1>
      </div>

      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
      <form action="{I18N_ACTION}" method="post" role="form">
        <table class="table table-striped">
          <thead>
            <th class="col-md-6">{PHP.L.i18n_original} ({I18N_ORIGINAL_LANG})</th>
            <th class="col-md-6">{I18N_LOCALIZED_LANG}</th>
          </thead>
          <tbody>
            <tr>
              <th colspan="2">{PHP.L.Title}</th>
            </tr>
            <tr>
              <td><h4>{I18N_PAGE_TITLE}</h4></td>
              <td><input type="text" class="form-control" name="title" value="{I18N_IPAGE_TITLE}" maxlength="128" size="64"></td>
            </tr>
            <tr>
              <th colspan="2">{PHP.L.Description}</th>
            </tr>
            <tr>
              <td><em>{I18N_PAGE_DESC}</em></td>
              <td><textarea name="desc" class="form-control" maxlength="255" rows="4" cols="64">{I18N_IPAGE_DESC}</textarea></td>
            </tr>
            <tr>
              <th colspan="2">{PHP.L.Text}</th>
            </tr>
            <tr>
              <td><em>{I18N_PAGE_TEXT}</em></td>
              <td>{I18N_IPAGE_TEXT}</td>
            </tr>
            <!-- BEGIN: TAGS -->
            <tr>
              <th colspan="2">{PHP.L.Tags}</th>
            </tr>
            <tr>
              <td><em>{I18N_PAGE_TAGS}</em></td>
              <td>
                {I18N_IPAGE_TAGS}
                <p class="help-block">{PHP.L.tags_comma_separated}</p>
              </td>
            </tr>
            <!-- END: TAGS -->
            </tbody>
            <tfoot>
              <td>&nbsp;</td>
              <td><input type="submit" value="{PHP.L.Submit}" class="btn btn-primary"></td>
            </tr>
          </tfoot>
        </table>
      </form>
<!-- END: MAIN -->
