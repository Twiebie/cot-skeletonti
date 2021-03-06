<!-- BEGIN: MAIN -->
      <div class="page-header">
        <h1>{PHP.L.recentitems_title}</h1>
      </div>

      <div class="btn-group btn-group-md">
        <a href="{PHP.days|cot_url('plug','e=recentitems$this')}" class="btn btn-default<!-- IF !{PHP.mode} --> active<!-- ENDIF -->" rel="nofollow">{PHP.L.All}</a>
        <a href="{PHP.days|cot_url('plug','e=recentitems$this&amp;mode=pages')}" class="btn btn-default<!-- IF {PHP._GET.mode} == 'pages' --> active<!-- ENDIF -->" rel="nofollow">{PHP.L.Pages}</a>
        <a href="{PHP.days|cot_url('plug','e=recentitems$this&amp;mode=forums')}" class="btn btn-default<!-- IF {PHP._GET.mode} == 'forums' --> active<!-- ENDIF -->" rel="nofollow">{PHP.L.Forums}</a>
      </div>

      <div class="btn-group btn-group-sm pull-right">
        <a class="btn btn-default" rel="nofollow" href="{PHP.mode|cot_url('plug','e=recentitems$this')}">{PHP.L.Today}</a>
        <!-- IF {PHP.usr.id} > 0 --><a class="btn btn-default" rel="nofollow" href="{PHP.mode|cot_url('plug','e=recentitems$this')}">{PHP.L.recentitems_fromlastvisit}</a><!-- ENDIF -->
        <a href="{PHP.mode|cot_url('plug','e=recentitems&amp;days=1$this')}" class="btn btn-default<!-- IF {PHP._GET.days} == 1 --> active<!-- ENDIF -->" rel="nofollow">{PHP.L.recentitems_1day}</a>
        <a href="{PHP.mode|cot_url('plug','e=recentitems&amp;days=2$this')}" class="btn btn-default<!-- IF {PHP._GET.days} == 2 --> active<!-- ENDIF -->" rel="nofollow">{PHP.L.recentitems_2days}</a>
        <a href="{PHP.mode|cot_url('plug','e=recentitems&amp;days=3$this')}" class="btn btn-default<!-- IF {PHP._GET.days} == 3 --> active<!-- ENDIF -->" rel="nofollow">{PHP.L.recentitems_3days}</a>
        <a href="{PHP.mode|cot_url('plug','e=recentitems&amp;days=7$this')}" class="btn btn-default<!-- IF {PHP._GET.days} == 7 --> active<!-- ENDIF -->" rel="nofollow">{PHP.L.recentitems_1week}</a>
        <a href="{PHP.mode|cot_url('plug','e=recentitems&amp;days=14$this')}" class="btn btn-default<!-- IF {PHP._GET.days} == 14 --> active<!-- ENDIF -->" rel="nofollow">{PHP.L.recentitems_2weeks}</a>
        <a href="{PHP.mode|cot_url('plug','e=recentitems&amp;days=30$this')}" class="btn btn-default<!-- IF {PHP._GET.days} == 30 --> active<!-- ENDIF -->" rel="nofollow">{PHP.L.recentitems_1month}</a>
      </div>

      {RECENT_PAGES}
      {RECENT_FORUMS}

      <!-- IF {PAGE_PAGENAV} -->
      <ul class="pagination">{PAGE_PAGEPREV}{PAGE_PAGENAV}{PAGE_PAGENEXT}</ul>
      <!-- ENDIF -->
<!-- END: MAIN -->
