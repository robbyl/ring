// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require tabbedcontent.js

//$(document).ready(function($) {
//    var tabs;
//    tabs = $('.tabscontent').tabbedContent({loop: true}).data('api');
//
//    // switch to tab...
//    $('a[href=#click-to-switch]').on('click', function(e) {
//        var tab = prompt('Tab to switch to (number or id)?');
//        if (!tabs.switchTab(tab)) {
//            alert('That tab does not exist :\\');
//        }
//        e.preventDefault();
//    });
//
//    // Next and prev actions
//    $('.controls a').on('click', function(e) {
//        var action = $(this).text().replace(/[^a-z]+/i, '').toLowerCase();
//        tabs[action]();
//        e.preventDefault();
//    });
//});
