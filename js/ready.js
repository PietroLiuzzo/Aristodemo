$(document).ready(function () {
               $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
               $('a[data-toggle="tab"]').find('.glyphicon').next().hide();
               $(this).find('i').show();
               })
               });