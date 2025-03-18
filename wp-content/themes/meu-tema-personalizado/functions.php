<?php
// Adicionar suporte a recursos básicos do WordPress
function meu_tema_setup() {
    // Suporte a título dinâmico
    add_theme_support('title-tag');

    // Suporte a imagens destacadas
    add_theme_support('post-thumbnails');

    // Registrar menu de navegação
    register_nav_menus(array(
        'primary' => __('Menu Principal', 'meu-tema'),
    ));
}
add_action('after_setup_theme', 'meu_tema_setup');

// Enfileirar scripts e estilos
function meu_tema_scripts() {
    // Carregar o estilo principal
    wp_enqueue_style('meu-tema-style', get_stylesheet_uri());

    // Carregar jQuery (opcional)
    wp_enqueue_script('jquery');

    // Carregar script personalizado
    wp_enqueue_script('meu-tema-script', get_template_directory_uri() . '/assets/js/main.js', array(), null, true);
}
add_action('wp_enqueue_scripts', 'meu_tema_scripts');
?>