/*$("#index_iframe").find("html").on("load", function() {
    console.info(this);
});

var iframeDocument = $("#index_iframe")[0].contentWindow.document;
$(iframeDocument).ready(function() {
    console.info($(this).width());
    console.info($(this).height());
    $("#index_iframe").height($(this).height() + "px");
});*/
console.info(context_root);
console.info("index.js被执行");

/*
 * $.get(context_root + "/ui/font_awesome", {}, function(data) { // var html =
 * $.parseHTML(data); // console.info(typeof html); // // console.info(html); //
 * console.info(data); var content = $(data).find("body").html();
 * console.info(content); console.info($(data));
 * console.info($(data).find("body")); }, "html");
 */
// 局部加载HTML
$("a.freedom-menu-a").on("click", function(e) {
    e.preventDefault();
    $("#index_content_body").empty();
    // menu-dropdown classic-menu-dropdown active
    // nav-link active
    $('li.menu-dropdown.classic-menu-dropdown.active').find('a.nav-link.active').removeClass("active");
    $('li.menu-dropdown.classic-menu-dropdown.active').find('li.active').removeClass("active");
    $('li.menu-dropdown.classic-menu-dropdown.active').removeClass("active");
    $(this).closest('li.menu-dropdown.classic-menu-dropdown').addClass("active");
    $(this).closest('li').addClass("active");
    $(this).addClass("active");

    var loadUrl = this.href;
    $("#index_content_body").load(loadUrl, function(responseText, textStatus, jqXHR) {
        console.info(textStatus);
        if (textStatus == "success" || textStatus == "notmodified") {
            var html = '<h1>' + $(e.target).data("freedom-page-title") + '&nbsp;&nbsp;<small>' + moment().format('YYYY-MM-DD HH:mm:ss') + '</small></h1>';
            $("#index-page-title").html(html);
        } else {
            
        }
    }, "html");
});
