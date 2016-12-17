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

/*$.get(context_root + "/ui/font_awesome", {}, function(data) {

    // var html = $.parseHTML(data);
    // console.info(typeof html);
    //    
    // console.info(html);
    // console.info(data);
    var content = $(data).find("body").html();
    console.info(content);
    console.info($(data));
    console.info($(data).find("body"));

}, "html");*/

$("a.freedom-menu-a").on("click", function(e) {
    e.preventDefault();
    $("#index_content_body").empty();
//    var loadUrl = context_root + "/ui/font_awesome";
    var loadUrl = this.href;
    $("#index_content_body").load(loadUrl, {}, function(data) {
    }, "html");
});
