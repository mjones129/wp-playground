<?php

function bible_reading_plan() {
  register_post_type('bible-plan', array(
    'supports' => array('title', 'editor', 'excerpt'),
    'has_archive' => true,
    'public' => true,
    'labels' => array(
      'name' => 'Bible Reading Plan',
      'add_new_item' => 'Add New Plan',
      'all_items' => 'All Reading Days',
      'singular_name' => 'Reading Day'
    ),
    'menu_icon' => 'dashicons-book-alt'
  ));
}

add_action('init', 'bible_reading_plan');
