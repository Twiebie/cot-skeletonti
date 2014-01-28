<?php defined('COT_CODE') or die('Wrong URL.');
/* ====================
[BEGIN_COT_THEME]
Name=Skeletonti v1.3.2
Schemes=skeletonti:Default
[END_COT_THEME]
==================== */

/**
 * Skeletonti
 *
 * @package Skeletonti
 * @author Twiebie
 * @copyright Copyright (c) 2013-2014 Cotonti Team, Twiebie
 * @license BSD
 */

// Forms
$R['input_text']     = '<input type="text" class="form-control" name="{$name}" value="{$value}" {$attrs}>{$error}';
$R['input_password'] = '<input type="password" class="form-control" name="{$name}" value="{$value}" {$attrs}>{$error}';
$R['input_textarea'] = '<textarea class="form-control" name="{$name}" rows="{$rows}" cols="{$cols}">{$value}</textarea>{$error}';
$R['input_select']   = '<select name="{$name}" class="form-control" {$attrs}>{$options}</select>{$error}';
$R['input_radio']    = '<label class="radio-inline"><input type="radio" name="{$name}" value="{$value}"{$checked}{$attrs}> {$title}</label>';

$R['input_select_rpagebegin']  = '<select name="{$name}" class="form-control">{$options}</select>{$error}';
$R['input_select_rpageexpire'] = '<select name="{$name}" class="form-control">{$options}</select>{$error}';
$R['input_select_rpagefile']   = '<select name="{$name}" class="form-control">{$options}</select>{$error}';

$R['input_date'] = '<div class="row">
    <div class="col-sm-2">{$day}</div>
    <div class="col-sm-4">{$month}</div>
    <div class="col-sm-2">{$year}</div>
    <div class="col-sm-2">{$hour}</div>
    <div class="col-sm-2">{$minute}</div>
</div>';

$R['input_date_short'] = '<div class="row">
    <div class="col-sm-2">{$day}</div>
    <div class="col-sm-4">{$month}</div>
    <div class="col-sm-4">{$year}</div>
</div>';

// Pagination
$R['link_pagenav_current'] = '<li class="active"><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_first']   = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_first'].'</a></li>';
$R['link_pagenav_gap']     = '<li>...</li>';
$R['link_pagenav_last']    = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_last'].'</a></li>';
$R['link_pagenav_main']    = '<li><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_next']    = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_next'].'</a></li>';
$R['link_pagenav_prev']    = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_prev'].'</a></li>';

// Tags
$R['tags_code_cloud_open']  = '<ul class="list-inline tag_cloud">';
$R['tags_link_cloud_tag']   = '<li><a href="{$url}" class="{$dim}" title="{$tag_title}" rel="tag">{$tag_title}</a></li>';
$R['tags_code_cloud_close'] = '</ul>';
$R['tags_code_cloud_more']  = '<a class="btn btn-sm btn-default" href="{$url}">'.$L['tags_All'].'</a>';
$R['tags_link_tag']         = '<a href="{$url}" title="{$tag_title}" rel="tag">{$tag_title}</a>';
$R['tags_input_editpage']   = '<input type="text" name="rtags" size="56" class="form-control autotags" value="{$tags}">';
$R['tags_input_editpost']   = '<input type="text" name="rtags" size="56" class="form-control autotags" value="{$tags}">';

// Users group list
$R['users_code_grplist_begin']     = '<ul class="list-group form-inline unstyled">';
$R['users_code_grplist_end']       = '</ul>';
$R['users_code_grplist_item']      = '<li class="list-group-item">{$item}</li>';
$R['users_code_grplist_item_main'] = '<li class="list-group-item active">{$item}</li>';
$R['users_input_grplist_checkbox'] = '<div class="checkbox-inline"><input type="checkbox" title="'.$L['Groupsmembership'].'" name="{$name}" value="1"{$checked}{$attrs}></div>';
$R['users_input_grplist_radio']    = '<div class="radio-inline"><input type="radio" title="'.$L['Maingroup'].'" name="{$name}" value="{$value}"{$checked}{$attrs}></div>';

// PFS icons
$R['pfs_link_addpix']   = '<a href="javascript:addpix(\'{$pfs_file}\',\'{$c2}\',\'{$pfs_desc}\')" class="btn btn-sm btn-default"><i class="glyphicon glyphicon-picture"></i></a>';
$R['pfs_link_addthumb'] = '<a href="javascript:addthumb(\'{$pfs_file}\',\'{$c2}\',\'{$pfs_desc}\')" class="btn btn-sm btn-default"><i class="glyphicon glyphicon-th-large"></i></a>';
$R['pfs_link_addfile']  = '<a href="javascript:addfile(\'{$pfs_file}\',\'{$c2}\',\'{$pfs_desc}\')" class="btn btn-sm btn-default"><i class="glyphicon glyphicon-file"></i></a>';

// PM module
$R['pm_icon'] = '<span class="glyphicon glyphicon-envelope" title="'.$L['pm_read'].'"></span>';
$R['pm_icon_new'] = '<span class="text-warning glyphicon glyphicon-envelope" title="'.$L['pm_unread'].'"></span>';
$R['pm_icon_trashcan'] = '<span class="glyphicon glyphicon-trash" title="'.$L['Delete'].'"></span>';
$R['pm_icon_edit'] = '<span class="glyphicon glyphicon-edit" title="'.$L['Edit'].'"></span>';
$R['pm_icon_star'] = '<a href="{$link}" title="'.$L['pm_putinstarred'].'"><span class="glyphicon glyphicon-star-empty" title="'.$L['pm_putinstarred'].'"></span></a>';
$R['pm_icon_unstar'] = '<a href="{$link}" title="'.$L['pm_deletefromstarred'].'"><span class="text-success glyphicon glyphicon-star" title="'.$L['pm_deletefromstarred'].'"></span></a>';

