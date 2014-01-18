<?php defined('COT_CODE') or die('Wrong URL.');
/**
 * Skeletonti CSS and JavaScript loader
 *
 * @package Skeletonti
 * @author Twiebie
 * @copyright Copyright (c) 2013-2014 Cotonti Team, Twiebie
 * @license BSD
 */

// CSS
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/bootstrap.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/modal.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/overrides.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/skeletonti.css');

// JavaScript
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/bootstrap.js');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/skeletonti.js');
