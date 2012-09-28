jQuery(document).ready(function($) {
    $('#login').click(function(e) {
        e.preventDefault();
        $('#register_popup').removeClass('visible').addClass('hidden');
        $('#login_popup').removeClass('hidden').addClass('visible');
    });
    $('#register').click(function(e) {
        e.preventDefault();
        $('#login_popup').removeClass('visible').addClass('hidden');
        $('#register_popup').removeClass('hidden').addClass('visible');
    });
});
