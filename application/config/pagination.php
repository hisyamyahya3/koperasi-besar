<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
$config['page_query_string'] = true;
$config['query_string_segment'] = 'per_page';
$config['full_tag_open'] = '<ul class="pagination pagination-sm no-margin">';
$config['full_tag_close'] = '</ul>';

// First Links
$config['first_link'] = '&laquo;&laquo;';
$config['first_tag_open'] = '<li>';
$config['first_tag_close'] = '</li>';

// Last Links
$config['last_link'] = '&raquo;&raquo;';
$config['last_tag_open'] = '<li>';
$config['last_tag_close'] = '</li>';

// Next Link
$config['next_link'] = '&raquo;';
$config['next_tag_open'] = '<li>';
$config['next_tag_close'] = '</li>';

// Previous Link
$config['prev_link'] = '&laquo;';
$config['prev_tag_open'] = '<li>';
$config['prev_tag_close'] = '</li>';

// Current Link
$config['cur_tag_open'] = '<li class="active">';
$config['cur_tag_close'] = '</li>';

// Digit Link
$config['num_tag_open'] = '<li>';
$config['num_tag_close'] = '</li>';

/* End of file pagination.php */
/* Location: ./system/application/config/pagination.php */