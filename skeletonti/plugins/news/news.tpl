<!-- BEGIN: NEWS -->
      <!-- BEGIN: PAGE_ROW -->
      <h3><a href="{PAGE_ROW_URL}" title="{PAGE_ROW_SHORTTITLE}">{PAGE_ROW_SHORTTITLE}</a></h3>

      <small>{PHP.L.PostedOn} {PAGE_ROW_DATE} {PHP.L.In} {PAGE_ROW_CATPATH}</small>
      <!-- IF {PAGE_ROW_COMMENTS_COUNT} > 0 -->
      &nbsp;&nbsp;|&nbsp;&nbsp;{PHP.L.comments_comments}:&nbsp;{PAGE_ROW_COMMENTS_COUNT}
      <!-- ENDIF -->

      <!-- IF {PHP.usr.isadmin} -->&nbsp;[ {PAGE_ROW_ADMIN_EDIT} ]<!-- ENDIF -->

      <p>{PAGE_ROW_TEXT_CUT}</p>
      <!-- IF {PAGE_ROW_TEXT_IS_CUT} -->
      <p><a href="{PAGE_ROW_URL}" class="btn btn-small btn-primary">{PHP.L.ReadMore}</a></p>
      <!-- ENDIF -->

      <!-- END: PAGE_ROW -->
      <ul class="pagination">{PAGE_PAGEPREV}{PAGE_PAGENAV}{PAGE_PAGENEXT}</ul>
<!-- END: NEWS -->
