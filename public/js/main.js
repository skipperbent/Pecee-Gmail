$(function () {
    $.init = function () {
        window.open = function (url) {
            macgap.window.open({url: "http://www.revert.dk", defaultBrowser: '1'});
            return false;
        };
    };

    $(window).on('hashchange', function () {
        $.init();
    });

});